package scalasql.query

import scalasql._
import sourcecode.Text
import utest._
import utils.ScalaSqlSuite

import java.time.LocalDate

/**
 * Tests for queries operations that force subqueries to be used.
 */
trait SubQueryTests extends ScalaSqlSuite {
  def tests = Tests {
    test("sortTakeJoin") - checker(
      query = Text {
        Purchase.select
          .joinOn(Product.select.sortBy(_.price).desc.take(1))(_.productId `=` _.id)
          .map { case (purchase, product) => purchase.total }
      },
      sql = """
        SELECT purchase0.total as res
        FROM purchase purchase0
        JOIN (SELECT product0.id as res__id, product0.price as res__price
          FROM product product0
          ORDER BY res__price DESC
          LIMIT 1) subquery1
        ON purchase0.product_id = subquery1.res__id
      """,
      value = Seq(10000.0)
    )

    test("sortTakeFrom") - checker(
      query = Text {
        Product.select.sortBy(_.price).desc.take(1).joinOn(Purchase)(_.id `=` _.productId).map {
          case (product, purchase) => purchase.total
        }
      },
      sql = """
        SELECT purchase1.total as res
        FROM (SELECT product0.id as res__id, product0.price as res__price
          FROM product product0
          ORDER BY res__price DESC
          LIMIT 1) subquery0
        JOIN purchase purchase1 ON subquery0.res__id = purchase1.product_id
      """,
      value = Seq(10000.0)
    )

    test("sortTakeFromAndJoin") - checker(
      query = Text {
        Product.select
          .sortBy(_.price)
          .desc
          .take(3)
          .joinOn(Purchase.select.sortBy(_.count).desc.take(3))(_.id `=` _.productId)
          .map { case (product, purchase) => (product.name, purchase.count) }
      },
      sql = """
        SELECT
          subquery0.res__name as res__0,
          subquery1.res__count as res__1
        FROM (SELECT
            product0.id as res__id,
            product0.name as res__name,
            product0.price as res__price
          FROM product product0
          ORDER BY res__price DESC
          LIMIT 3) subquery0
        JOIN (SELECT
            purchase0.product_id as res__product_id,
            purchase0.count as res__count
          FROM purchase purchase0
          ORDER BY res__count DESC
          LIMIT 3) subquery1
        ON subquery0.res__id = subquery1.res__product_id
      """,
      value = Seq(("Camera", 10))
    )

    test("sortLimitSortLimit") - checker(
      query = Text {
        Product.select.sortBy(_.price).desc.take(4).sortBy(_.price).asc.take(2).map(_.name)
      },
      sql = """
        SELECT subquery0.res__name as res
        FROM (SELECT
            product0.name as res__name,
            product0.price as res__price
          FROM product product0
          ORDER BY res__price DESC
          LIMIT 4) subquery0
        ORDER BY subquery0.res__price ASC
        LIMIT 2
      """,
      value = Seq("Face Mask", "Skate Board")
    )

    test("sortGroupBy") - checker(
      query = Text {
        Purchase.select.sortBy(_.count).take(5).groupBy(_.productId)(_.sumBy(_.total))
      },
      sql = """
        SELECT subquery0.res__product_id as res__0, SUM(subquery0.res__total) as res__1
        FROM (SELECT
            purchase0.product_id as res__product_id,
            purchase0.count as res__count,
            purchase0.total as res__total
          FROM purchase purchase0
          ORDER BY res__count
          LIMIT 5) subquery0
        GROUP BY subquery0.res__product_id
      """,
      value = Seq((1, 44.4), (2, 900.0), (3, 15.7), (4, 493.8), (5, 10000.0)),
      normalize = (x: Seq[(Int, Double)]) => x.sorted
    )

    test("groupByJoin") - checker(
      query = Text {
        Purchase.select.groupBy(_.productId)(_.sumBy(_.total)).joinOn(Product)(_._1 `=` _.id).map {
          case ((productId, total), product) => (product.name, total)
        }
      },
      sql = """
        SELECT
          product1.name as res__0,
          subquery0.res__1 as res__1
        FROM (SELECT
            purchase0.product_id as res__0,
            SUM(purchase0.total) as res__1
          FROM purchase purchase0
          GROUP BY purchase0.product_id) subquery0
        JOIN product product1 ON subquery0.res__0 = product1.id
      """,
      value = Seq(
        ("Camera", 10000.0),
        ("Cookie", 1.3),
        ("Face Mask", 932.4),
        ("Guitar", 900.0),
        ("Skate Board", 493.8),
        ("Socks", 15.7)
      ),
      normalize = (x: Seq[(String, Double)]) => x.sorted
    )

    test("subqueryInFilter") - checker(
      query = Text {
        Buyer.select.filter(c => ShippingInfo.select.filter(p => c.id `=` p.buyerId).size `=` 0)
      },
      sql = """
        SELECT
          buyer0.id as res__id,
          buyer0.name as res__name,
          buyer0.date_of_birth as res__date_of_birth
        FROM buyer buyer0
        WHERE (SELECT
            COUNT(1) as res
            FROM shipping_info shipping_info0
            WHERE buyer0.id = shipping_info0.buyer_id) = ?
      """,
      value = Seq(Buyer[Id](3, "Li Haoyi", LocalDate.parse("1965-08-09")))
    )
    test("subqueryInMap") - checker(
      query = Text {
        Buyer.select.map(c => (c, ShippingInfo.select.filter(p => c.id `=` p.buyerId).size))
      },
      sql = """
        SELECT
          buyer0.id as res__0__id,
          buyer0.name as res__0__name,
          buyer0.date_of_birth as res__0__date_of_birth,
          (SELECT COUNT(1) as res FROM shipping_info shipping_info0 WHERE buyer0.id = shipping_info0.buyer_id) as res__1
        FROM buyer buyer0
      """,
      value = Seq(
        (Buyer[Id](1, "James Bond", LocalDate.parse("2001-02-03")), 1),
        (Buyer[Id](2, "叉烧包", LocalDate.parse("1923-11-12")), 2),
        (Buyer[Id](3, "Li Haoyi", LocalDate.parse("1965-08-09")), 0)
      )
    )
    test("subqueryInMapNested") - checker(
      query = Text {
        Buyer.select.map(c => (c, ShippingInfo.select.filter(p => c.id `=` p.buyerId).size `=` 1))
      },
      sql = """
        SELECT
          buyer0.id as res__0__id,
          buyer0.name as res__0__name,
          buyer0.date_of_birth as res__0__date_of_birth,
          (SELECT
            COUNT(1) as res
            FROM shipping_info shipping_info0
            WHERE buyer0.id = shipping_info0.buyer_id) = ? as res__1
        FROM buyer buyer0
      """,
      value = Seq(
        (Buyer[Id](1, "James Bond", LocalDate.parse("2001-02-03")), true),
        (Buyer[Id](2, "叉烧包", LocalDate.parse("1923-11-12")), false),
        (Buyer[Id](3, "Li Haoyi", LocalDate.parse("1965-08-09")), false)
      )
    )

    test("selectLimitUnionSelect") - checker(
      query = Text {
        Buyer.select
          .map(_.name.toLowerCase)
          .take(2)
          .unionAll(Product.select.map(_.kebabCaseName.toLowerCase))
      },
      sql = """
        SELECT subquery0.res as res
        FROM (SELECT
            LOWER(buyer0.name) as res
          FROM buyer buyer0
          LIMIT 2) subquery0
        UNION ALL
        SELECT LOWER(product0.kebab_case_name) as res
        FROM product product0
      """,
      value =
        Seq("james bond", "叉烧包", "face-mask", "guitar", "socks", "skate-board", "camera", "cookie")
    )

    test("selectUnionSelectLimit") - checker(
      query = Text {
        Buyer.select
          .map(_.name.toLowerCase)
          .unionAll(Product.select.map(_.kebabCaseName.toLowerCase).take(2))
      },
      sql = """
        SELECT LOWER(buyer0.name) as res
        FROM buyer buyer0
        UNION ALL
        SELECT subquery0.res as res
        FROM (SELECT
            LOWER(product0.kebab_case_name) as res
          FROM product product0
          LIMIT 2) subquery0
      """,
      value = Seq("james bond", "叉烧包", "li haoyi", "face-mask", "guitar")
    )
  }
}

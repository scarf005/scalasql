
import mill._
import scalalib._

import scala.collection.mutable

object scalasql extends RootModule with ScalaModule {
  def scalaVersion = "2.13.11"
  def ivyDeps = Agg(
    ivy"com.lihaoyi::sourcecode:0.3.1",
    ivy"com.lihaoyi::upickle-implicits:3.1.3",
    ivy"org.scala-lang:scala-reflect:$scalaVersion",
    ivy"org.apache.logging.log4j:log4j-api:2.20.0",
    ivy"org.apache.logging.log4j:log4j-core:2.20.0",
    ivy"org.apache.logging.log4j:log4j-slf4j-impl:2.20.0",
  )

  object test extends ScalaTests {
    def ivyDeps = Agg(
      ivy"com.github.vertical-blank:sql-formatter:2.0.4",
      ivy"com.lihaoyi::mainargs:0.4.0",
      ivy"com.lihaoyi::os-lib:0.9.1",
      ivy"com.lihaoyi::upickle:3.1.3",
      ivy"com.lihaoyi::utest:0.8.1-18-79b46d",
      ivy"com.h2database:h2:2.2.224",
      ivy"org.hsqldb:hsqldb:2.5.1",
      ivy"org.xerial:sqlite-jdbc:3.43.0.0",
      ivy"org.testcontainers:postgresql:1.19.1",
      ivy"org.postgresql:postgresql:42.6.0",
      ivy"org.testcontainers:mysql:1.19.1",
      ivy"mysql:mysql-connector-java:8.0.33",
    )

    def testFramework = "scalasql.UtestFramework"
  }

  def generateDocs() = T.command {
    var isDocs = Option.empty[Int]
    var isCode = false
    val outputLines = collection.mutable.Buffer.empty[String]
    for (line <- os.read.lines(os.pwd / "test" / "src" / "WorldSqlTests.scala")) {
      val isDocsIndex = line.indexOf("// +DOCS")
      if (isDocsIndex != -1) {
        outputLines.append("")
        isDocs = Some(isDocsIndex)
        isCode = false
      }
      else if (line.contains("// -DOCS")) {
        isDocs = None
        if (isCode){
          outputLines.append("```")
          isCode = false
        }
      }
      else for (index <- isDocs) {
        val suffix = line.drop(index)
        (suffix, isCode) match{
          case ("", _) => outputLines.append("")

          case (s"// +INCLUDE $rest", _) =>
            os.read.lines(os.pwd / os.SubPath(rest)).foreach(outputLines.append)

          case (s"//$rest", false) => outputLines.append(rest.stripPrefix(" "))

          case (s"//$rest", true) =>
            outputLines.append("")
            outputLines.append("```")
            isCode = false
            outputLines.append(rest.stripPrefix(" "))

          case (c, true) => outputLines.append(c)

          case (c, false) =>
            outputLines.append("```scala")
            isCode = true
            outputLines.append(c)
        }

      }
    }
    os.write.over(os.pwd / "tutorial.md", outputLines.mkString("\n"))
  }
  def generateQueryLibrary() = T.command {
    val records = upickle.default.read[Seq[Record]](os.read.stream(os.pwd / "recordedTests.json"))

    val rawScalaStrs = records.flatMap(r => Seq(r.queryCodeString) ++ r.resultCodeString)
    val formattedScalaStrs = {
      val tmps = rawScalaStrs.map(os.temp(_, suffix = ".scala"))
      mill.scalalib.scalafmt.ScalafmtWorkerModule
        .worker()
        .reformat(tmps.map(PathRef(_)), PathRef(os.pwd / ".scalafmt.conf"))

      tmps.map(os.read(_).trim)
    }
    val scalafmt = rawScalaStrs.zip(formattedScalaStrs).toMap

    def sqlFormat(sOpt: Option[String]) = {
      sOpt match{
        case None => ""
        case Some(s) =>

          val indent = s
            .linesIterator
            .filter(_.trim.nonEmpty)
            .map(_.takeWhile(_ == ' ').size)
            .minOption
            .getOrElse(0)

          val dedented = s
            .linesIterator
            .map(_.drop(indent))
            .mkString("\n    ")
            .trim
          s"""
             |*
             |    ```sql
             |    $dedented
             |    ```
             |""".stripMargin
      }
    }

    def renderResult(resultOpt: Option[String]) = {
      resultOpt match{
        case None => ""
        case Some(result) =>
          s"""
             |*
             |    ```scala
             |    ${scalafmt(result).linesIterator.mkString("\n    ")}
             |    ```
             |""".stripMargin
      }
    }


    for ((dbName, dbGroup) <- records.groupBy(_.suiteName.split('.').apply(1))) {
      val outputLines = mutable.Buffer.empty[String]
      outputLines.append(
        s"""# $dbName Reference Query Library
           |
           |This page contains example queries for the `$dbName` database, taken
           |from the ScalaSql test suite. You can use this as a reference to see
           |what kinds of operations ScalaSql supports when working on `$dbName`,
           |and how these operations are translated into raw SQL to be sent to
           |the database for execution.
           |""".stripMargin
      )
      for((suiteName, suiteGroup) <- dbGroup.groupBy(_.suiteName).toSeq.sortBy(_._2.head.suiteLine)) {
        val seen = mutable.Set.empty[String]
        outputLines.append(s"## ${suiteName.split('.').drop(2).mkString(".")}")
        var lastSeen = ""
        for(r <- suiteGroup){

          val prettyName = (r.suiteName.split('.').drop(2) ++ r.testPath).mkString(".")
          val titleOpt =
            if (prettyName == lastSeen) Some("----")
            else if (!seen(prettyName)) Some(s"### $prettyName")
            else None

          for(title <- titleOpt) {
            seen.add(prettyName)
            lastSeen = prettyName
            outputLines.append(
              s"""$title
                 |
                 |```scala
                 |${scalafmt(r.queryCodeString)}
                 |```
                 |
                 |${sqlFormat(r.sqlString)}
                 |
                 |${renderResult(r.resultCodeString)}
                 |
                 |""".stripMargin
            )
          }
        }
      }
      os.write.over(os.pwd / s"query-library-$dbName.md", outputLines.mkString("\n"))
    }
  }

}


case class Record(suiteName: String,
                  suiteLine: Int,
                  testPath: Seq[String],
                  queryCodeString: String,
                  sqlString: Option[String],
                  resultCodeString: Option[String])

object Record {
  implicit val rw: upickle.default.ReadWriter[Record] = upickle.default.macroRW
}
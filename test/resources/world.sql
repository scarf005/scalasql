
--
-- The sample data used in the world database is Copyright Statistics
-- Finland, http://www.stat.fi/worldinfigures.
--

CREATE TABLE IF NOT EXISTS city (
    id integer AUTO_INCREMENT NOT NULL,
    name varchar NOT NULL,
    countrycode character(3) NOT NULL,
    district varchar NOT NULL,
    population integer NOT NULL
);

CREATE TABLE IF NOT EXISTS country (
    code character(3) NOT NULL,
    name varchar NOT NULL,
    continent varchar NOT NULL,
    region varchar NOT NULL,
    surfacearea real NOT NULL,
    indepyear smallint,
    population integer NOT NULL,
    lifeexpectancy real,
    gnp numeric(10,2),
    gnpold numeric(10,2),
    localname varchar NOT NULL,
    governmentform varchar NOT NULL,
    headofstate varchar,
    capital integer,
    code2 character(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS countrylanguage (
    countrycode character(3) NOT NULL,
    language varchar NOT NULL,
    isofficial boolean NOT NULL,
    percentage real NOT NULL
);

-- COPY city (id, name, countrycode, district, population) FROM stdin;
INSERT INTO city (name, countrycode, district, population) VALUES ('Kabul', 'AFG', 'Kabol', 1780000),
('Qandahar', 'AFG', 'Qandahar', 237500),
('Herat', 'AFG', 'Herat', 186800),
('Mazar-e-Sharif', 'AFG', 'Balkh', 127800),
('Amsterdam', 'NLD', 'Noord-Holland', 731200),
('Rotterdam', 'NLD', 'Zuid-Holland', 593321),
('Haag', 'NLD', 'Zuid-Holland', 440900),
('Utrecht', 'NLD', 'Utrecht', 234323),
('Eindhoven', 'NLD', 'Noord-Brabant', 201843),
('Tilburg', 'NLD', 'Noord-Brabant', 193238),
('Groningen', 'NLD', 'Groningen', 172701),
('Breda', 'NLD', 'Noord-Brabant', 160398),
('Apeldoorn', 'NLD', 'Gelderland', 153491),
('Nijmegen', 'NLD', 'Gelderland', 152463),
('Enschede', 'NLD', 'Overijssel', 149544),
('Haarlem', 'NLD', 'Noord-Holland', 148772),
('Almere', 'NLD', 'Flevoland', 142465),
('Arnhem', 'NLD', 'Gelderland', 138020),
('Zaanstad', 'NLD', 'Noord-Holland', 135621),
('´s-Hertogenbosch', 'NLD', 'Noord-Brabant', 129170),
('Amersfoort', 'NLD', 'Utrecht', 126270),
('Maastricht', 'NLD', 'Limburg', 122087),
('Dordrecht', 'NLD', 'Zuid-Holland', 119811),
('Leiden', 'NLD', 'Zuid-Holland', 117196),
('Haarlemmermeer', 'NLD', 'Noord-Holland', 110722),
('Zoetermeer', 'NLD', 'Zuid-Holland', 110214),
('Emmen', 'NLD', 'Drenthe', 105853),
('Zwolle', 'NLD', 'Overijssel', 105819),
('Ede', 'NLD', 'Gelderland', 101574),
('Delft', 'NLD', 'Zuid-Holland', 95268),
('Heerlen', 'NLD', 'Limburg', 95052),
('Alkmaar', 'NLD', 'Noord-Holland', 92713),
('Willemstad', 'ANT', 'Curaçao', 2345),
('Tirana', 'ALB', 'Tirana', 270000),
('Alger', 'DZA', 'Alger', 2168000),
('Oran', 'DZA', 'Oran', 609823),
('Constantine', 'DZA', 'Constantine', 443727),
('Annaba', 'DZA', 'Annaba', 222518),
('Batna', 'DZA', 'Batna', 183377),
('Sétif', 'DZA', 'Sétif', 179055),
('Sidi Bel Abbès', 'DZA', 'Sidi Bel Abbès', 153106),
('Skikda', 'DZA', 'Skikda', 128747),
('Biskra', 'DZA', 'Biskra', 128281),
('Blida (el-Boulaida)', 'DZA', 'Blida', 127284),
('Béjaïa', 'DZA', 'Béjaïa', 117162),
('Mostaganem', 'DZA', 'Mostaganem', 115212),
('Tébessa', 'DZA', 'Tébessa', 112007),
('Tlemcen (Tilimsen)', 'DZA', 'Tlemcen', 110242),
('Béchar', 'DZA', 'Béchar', 107311),
('Tiaret', 'DZA', 'Tiaret', 100118),
('Ech-Chleff (el-Asnam)', 'DZA', 'Chlef', 96794),
('Ghardaïa', 'DZA', 'Ghardaïa', 89415),
('Tafuna', 'ASM', 'Tutuila', 5200),
('Fagatogo', 'ASM', 'Tutuila', 2323),
('Andorra la Vella', 'AND', 'Andorra la Vella', 21189),
('Luanda', 'AGO', 'Luanda', 2022000),
('Huambo', 'AGO', 'Huambo', 163100),
('Lobito', 'AGO', 'Benguela', 130000),
('Benguela', 'AGO', 'Benguela', 128300),
('Namibe', 'AGO', 'Namibe', 118200),
('South Hill', 'AIA', '', 961),
('The Valley', 'AIA', '', 595),
('Saint John´s', 'ATG', 'St John', 24000),
('Dubai', 'ARE', 'Dubai', 669181),
('Abu Dhabi', 'ARE', 'Abu Dhabi', 398695),
('Sharja', 'ARE', 'Sharja', 320095),
('al-Ayn', 'ARE', 'Abu Dhabi', 225970),
('Ajman', 'ARE', 'Ajman', 114395),
('Buenos Aires', 'ARG', 'Distrito Federal', 2982146),
('La Matanza', 'ARG', 'Buenos Aires', 1266461),
('Córdoba', 'ARG', 'Córdoba', 1157507),
('Rosario', 'ARG', 'Santa Fé', 907718),
('Lomas de Zamora', 'ARG', 'Buenos Aires', 622013),
('Quilmes', 'ARG', 'Buenos Aires', 559249),
('Almirante Brown', 'ARG', 'Buenos Aires', 538918),
('La Plata', 'ARG', 'Buenos Aires', 521936),
('Mar del Plata', 'ARG', 'Buenos Aires', 512880),
('San Miguel de Tucumán', 'ARG', 'Tucumán', 470809),
('Lanús', 'ARG', 'Buenos Aires', 469735),
('Merlo', 'ARG', 'Buenos Aires', 463846),
('General San Martín', 'ARG', 'Buenos Aires', 422542),
('Salta', 'ARG', 'Salta', 367550),
('Moreno', 'ARG', 'Buenos Aires', 356993),
('Santa Fé', 'ARG', 'Santa Fé', 353063),
('Avellaneda', 'ARG', 'Buenos Aires', 353046),
('Tres de Febrero', 'ARG', 'Buenos Aires', 352311),
('Morón', 'ARG', 'Buenos Aires', 349246),
('Florencio Varela', 'ARG', 'Buenos Aires', 315432),
('San Isidro', 'ARG', 'Buenos Aires', 306341),
('Tigre', 'ARG', 'Buenos Aires', 296226),
('Malvinas Argentinas', 'ARG', 'Buenos Aires', 290335),
('Vicente López', 'ARG', 'Buenos Aires', 288341),
('Berazategui', 'ARG', 'Buenos Aires', 276916),
('Corrientes', 'ARG', 'Corrientes', 258103),
('San Miguel', 'ARG', 'Buenos Aires', 248700),
('Bahía Blanca', 'ARG', 'Buenos Aires', 239810),
('Esteban Echeverría', 'ARG', 'Buenos Aires', 235760),
('Resistencia', 'ARG', 'Chaco', 229212),
('José C. Paz', 'ARG', 'Buenos Aires', 221754),
('Paraná', 'ARG', 'Entre Rios', 207041),
('Godoy Cruz', 'ARG', 'Mendoza', 206998),
('Posadas', 'ARG', 'Misiones', 201273),
('Guaymallén', 'ARG', 'Mendoza', 200595),
('Santiago del Estero', 'ARG', 'Santiago del Estero', 189947),
('San Salvador de Jujuy', 'ARG', 'Jujuy', 178748),
('Hurlingham', 'ARG', 'Buenos Aires', 170028),
('Neuquén', 'ARG', 'Neuquén', 167296),
('Ituzaingó', 'ARG', 'Buenos Aires', 158197),
('San Fernando', 'ARG', 'Buenos Aires', 153036),
('Formosa', 'ARG', 'Formosa', 147636),
('Las Heras', 'ARG', 'Mendoza', 145823),
('La Rioja', 'ARG', 'La Rioja', 138117),
('San Fernando del Valle de Cata', 'ARG', 'Catamarca', 134935),
('Río Cuarto', 'ARG', 'Córdoba', 134355),
('Comodoro Rivadavia', 'ARG', 'Chubut', 124104),
('Mendoza', 'ARG', 'Mendoza', 123027),
('San Nicolás de los Arroyos', 'ARG', 'Buenos Aires', 119302),
('San Juan', 'ARG', 'San Juan', 119152),
('Escobar', 'ARG', 'Buenos Aires', 116675),
('Concordia', 'ARG', 'Entre Rios', 116485),
('Pilar', 'ARG', 'Buenos Aires', 113428),
('San Luis', 'ARG', 'San Luis', 110136),
('Ezeiza', 'ARG', 'Buenos Aires', 99578),
('San Rafael', 'ARG', 'Mendoza', 94651),
('Tandil', 'ARG', 'Buenos Aires', 91101),
('Yerevan', 'ARM', 'Yerevan', 1248700),
('Gjumri', 'ARM', 'irak', 211700),
('Vanadzor', 'ARM', 'Lori', 172700),
('Oranjestad', 'ABW', '', 29034),
('Sydney', 'AUS', 'New South Wales', 3276207),
('Melbourne', 'AUS', 'Victoria', 2865329),
('Brisbane', 'AUS', 'Queensland', 1291117),
('Perth', 'AUS', 'West Australia', 1096829),
('Adelaide', 'AUS', 'South Australia', 978100),
('Canberra', 'AUS', 'Capital Region', 322723),
('Gold Coast', 'AUS', 'Queensland', 311932),
('Newcastle', 'AUS', 'New South Wales', 270324),
('Central Coast', 'AUS', 'New South Wales', 227657),
('Wollongong', 'AUS', 'New South Wales', 219761),
('Hobart', 'AUS', 'Tasmania', 126118),
('Geelong', 'AUS', 'Victoria', 125382),
('Townsville', 'AUS', 'Queensland', 109914),
('Cairns', 'AUS', 'Queensland', 92273),
('Baku', 'AZE', 'Baki', 1787800),
('Gäncä', 'AZE', 'Gäncä', 299300),
('Sumqayit', 'AZE', 'Sumqayit', 283000),
('Mingäçevir', 'AZE', 'Mingäçevir', 93900),
('Nassau', 'BHS', 'New Providence', 172000),
('al-Manama', 'BHR', 'al-Manama', 148000),
('Dhaka', 'BGD', 'Dhaka', 3612850),
('Chittagong', 'BGD', 'Chittagong', 1392860),
('Khulna', 'BGD', 'Khulna', 663340),
('Rajshahi', 'BGD', 'Rajshahi', 294056),
('Narayanganj', 'BGD', 'Dhaka', 202134),
('Rangpur', 'BGD', 'Rajshahi', 191398),
('Mymensingh', 'BGD', 'Dhaka', 188713),
('Barisal', 'BGD', 'Barisal', 170232),
('Tungi', 'BGD', 'Dhaka', 168702),
('Jessore', 'BGD', 'Khulna', 139710),
('Comilla', 'BGD', 'Chittagong', 135313),
('Nawabganj', 'BGD', 'Rajshahi', 130577),
('Dinajpur', 'BGD', 'Rajshahi', 127815),
('Bogra', 'BGD', 'Rajshahi', 120170),
('Sylhet', 'BGD', 'Sylhet', 117396),
('Brahmanbaria', 'BGD', 'Chittagong', 109032),
('Tangail', 'BGD', 'Dhaka', 106004),
('Jamalpur', 'BGD', 'Dhaka', 103556),
('Pabna', 'BGD', 'Rajshahi', 103277),
('Naogaon', 'BGD', 'Rajshahi', 101266),
('Sirajganj', 'BGD', 'Rajshahi', 99669),
('Narsinghdi', 'BGD', 'Dhaka', 98342),
('Saidpur', 'BGD', 'Rajshahi', 96777),
('Gazipur', 'BGD', 'Dhaka', 96717),
('Bridgetown', 'BRB', 'St Michael', 6070),
('Antwerpen', 'BEL', 'Antwerpen', 446525),
('Gent', 'BEL', 'East Flanderi', 224180),
('Charleroi', 'BEL', 'Hainaut', 200827),
('Liège', 'BEL', 'Liège', 185639),
('Bruxelles [Brussel]', 'BEL', 'Bryssel', 133859),
('Brugge', 'BEL', 'West Flanderi', 116246),
('Schaerbeek', 'BEL', 'Bryssel', 105692),
('Namur', 'BEL', 'Namur', 105419),
('Mons', 'BEL', 'Hainaut', 90935),
('Belize City', 'BLZ', 'Belize City', 55810),
('Belmopan', 'BLZ', 'Cayo', 7105),
('Cotonou', 'BEN', 'Atlantique', 536827),
('Porto-Novo', 'BEN', 'Ouémé', 194000),
('Djougou', 'BEN', 'Atacora', 134099),
('Parakou', 'BEN', 'Borgou', 103577),
('Saint George', 'BMU', 'Saint George´s', 1800),
('Hamilton', 'BMU', 'Hamilton', 1200),
('Thimphu', 'BTN', 'Thimphu', 22000),
('Santa Cruz de la Sierra', 'BOL', 'Santa Cruz', 935361),
('La Paz', 'BOL', 'La Paz', 758141),
('El Alto', 'BOL', 'La Paz', 534466),
('Cochabamba', 'BOL', 'Cochabamba', 482800),
('Oruro', 'BOL', 'Oruro', 223553),
('Sucre', 'BOL', 'Chuquisaca', 178426),
('Potosí', 'BOL', 'Potosí', 140642),
('Tarija', 'BOL', 'Tarija', 125255),
('Sarajevo', 'BIH', 'Federaatio', 360000),
('Banja Luka', 'BIH', 'Republika Srpska', 143079),
('Zenica', 'BIH', 'Federaatio', 96027),
('Gaborone', 'BWA', 'Gaborone', 213017),
('Francistown', 'BWA', 'Francistown', 101805),
('São Paulo', 'BRA', 'São Paulo', 9968485),
('Rio de Janeiro', 'BRA', 'Rio de Janeiro', 5598953),
('Salvador', 'BRA', 'Bahia', 2302832),
('Belo Horizonte', 'BRA', 'Minas Gerais', 2139125),
('Fortaleza', 'BRA', 'Ceará', 2097757),
('Brasília', 'BRA', 'Distrito Federal', 1969868),
('Curitiba', 'BRA', 'Paraná', 1584232),
('Recife', 'BRA', 'Pernambuco', 1378087),
('Porto Alegre', 'BRA', 'Rio Grande do Sul', 1314032),
('Manaus', 'BRA', 'Amazonas', 1255049),
('Belém', 'BRA', 'Pará', 1186926),
('Guarulhos', 'BRA', 'São Paulo', 1095874),
('Goiânia', 'BRA', 'Goiás', 1056330),
('Campinas', 'BRA', 'São Paulo', 950043),
('São Gonçalo', 'BRA', 'Rio de Janeiro', 869254),
('Nova Iguaçu', 'BRA', 'Rio de Janeiro', 862225),
('São Luís', 'BRA', 'Maranhão', 837588),
('Maceió', 'BRA', 'Alagoas', 786288),
('Duque de Caxias', 'BRA', 'Rio de Janeiro', 746758),
('São Bernardo do Campo', 'BRA', 'São Paulo', 723132),
('Teresina', 'BRA', 'Piauí', 691942),
('Natal', 'BRA', 'Rio Grande do Norte', 688955),
('Osasco', 'BRA', 'São Paulo', 659604),
('Campo Grande', 'BRA', 'Mato Grosso do Sul', 649593),
('Santo André', 'BRA', 'São Paulo', 630073),
('João Pessoa', 'BRA', 'Paraíba', 584029),
('Jaboatão dos Guararapes', 'BRA', 'Pernambuco', 558680),
('Contagem', 'BRA', 'Minas Gerais', 520801),
('São José dos Campos', 'BRA', 'São Paulo', 515553),
('Uberlândia', 'BRA', 'Minas Gerais', 487222),
('Feira de Santana', 'BRA', 'Bahia', 479992),
('Ribeirão Preto', 'BRA', 'São Paulo', 473276),
('Sorocaba', 'BRA', 'São Paulo', 466823),
('Niterói', 'BRA', 'Rio de Janeiro', 459884),
('Cuiabá', 'BRA', 'Mato Grosso', 453813),
('Juiz de Fora', 'BRA', 'Minas Gerais', 450288),
('Aracaju', 'BRA', 'Sergipe', 445555),
('São João de Meriti', 'BRA', 'Rio de Janeiro', 440052),
('Londrina', 'BRA', 'Paraná', 432257),
('Joinville', 'BRA', 'Santa Catarina', 428011),
('Belford Roxo', 'BRA', 'Rio de Janeiro', 425194),
('Santos', 'BRA', 'São Paulo', 408748),
('Ananindeua', 'BRA', 'Pará', 400940),
('Campos dos Goytacazes', 'BRA', 'Rio de Janeiro', 398418),
('Mauá', 'BRA', 'São Paulo', 375055),
('Carapicuíba', 'BRA', 'São Paulo', 357552),
('Olinda', 'BRA', 'Pernambuco', 354732),
('Campina Grande', 'BRA', 'Paraíba', 352497),
('São José do Rio Preto', 'BRA', 'São Paulo', 351944),
('Caxias do Sul', 'BRA', 'Rio Grande do Sul', 349581),
('Moji das Cruzes', 'BRA', 'São Paulo', 339194),
('Diadema', 'BRA', 'São Paulo', 335078),
('Aparecida de Goiânia', 'BRA', 'Goiás', 324662),
('Piracicaba', 'BRA', 'São Paulo', 319104),
('Cariacica', 'BRA', 'Espírito Santo', 319033),
('Vila Velha', 'BRA', 'Espírito Santo', 318758),
('Pelotas', 'BRA', 'Rio Grande do Sul', 315415),
('Bauru', 'BRA', 'São Paulo', 313670),
('Porto Velho', 'BRA', 'Rondônia', 309750),
('Serra', 'BRA', 'Espírito Santo', 302666),
('Betim', 'BRA', 'Minas Gerais', 302108),
('Jundíaí', 'BRA', 'São Paulo', 296127),
('Canoas', 'BRA', 'Rio Grande do Sul', 294125),
('Franca', 'BRA', 'São Paulo', 290139),
('São Vicente', 'BRA', 'São Paulo', 286848),
('Maringá', 'BRA', 'Paraná', 286461),
('Montes Claros', 'BRA', 'Minas Gerais', 286058),
('Anápolis', 'BRA', 'Goiás', 282197),
('Florianópolis', 'BRA', 'Santa Catarina', 281928),
('Petrópolis', 'BRA', 'Rio de Janeiro', 279183),
('Itaquaquecetuba', 'BRA', 'São Paulo', 270874),
('Vitória', 'BRA', 'Espírito Santo', 270626),
('Ponta Grossa', 'BRA', 'Paraná', 268013),
('Rio Branco', 'BRA', 'Acre', 259537),
('Foz do Iguaçu', 'BRA', 'Paraná', 259425),
('Macapá', 'BRA', 'Amapá', 256033),
('Ilhéus', 'BRA', 'Bahia', 254970),
('Vitória da Conquista', 'BRA', 'Bahia', 253587),
('Uberaba', 'BRA', 'Minas Gerais', 249225),
('Paulista', 'BRA', 'Pernambuco', 248473),
('Limeira', 'BRA', 'São Paulo', 245497),
('Blumenau', 'BRA', 'Santa Catarina', 244379),
('Caruaru', 'BRA', 'Pernambuco', 244247),
('Santarém', 'BRA', 'Pará', 241771),
('Volta Redonda', 'BRA', 'Rio de Janeiro', 240315),
('Novo Hamburgo', 'BRA', 'Rio Grande do Sul', 239940),
('Caucaia', 'BRA', 'Ceará', 238738),
('Santa Maria', 'BRA', 'Rio Grande do Sul', 238473),
('Cascavel', 'BRA', 'Paraná', 237510),
('Guarujá', 'BRA', 'São Paulo', 237206),
('Ribeirão das Neves', 'BRA', 'Minas Gerais', 232685),
('Governador Valadares', 'BRA', 'Minas Gerais', 231724),
('Taubaté', 'BRA', 'São Paulo', 229130),
('Imperatriz', 'BRA', 'Maranhão', 224564),
('Gravataí', 'BRA', 'Rio Grande do Sul', 223011),
('Embu', 'BRA', 'São Paulo', 222223),
('Mossoró', 'BRA', 'Rio Grande do Norte', 214901),
('Várzea Grande', 'BRA', 'Mato Grosso', 214435),
('Petrolina', 'BRA', 'Pernambuco', 210540),
('Barueri', 'BRA', 'São Paulo', 208426),
('Viamão', 'BRA', 'Rio Grande do Sul', 207557),
('Ipatinga', 'BRA', 'Minas Gerais', 206338),
('Juazeiro', 'BRA', 'Bahia', 201073),
('Juazeiro do Norte', 'BRA', 'Ceará', 199636),
('Taboão da Serra', 'BRA', 'São Paulo', 197550),
('São José dos Pinhais', 'BRA', 'Paraná', 196884),
('Magé', 'BRA', 'Rio de Janeiro', 196147),
('Suzano', 'BRA', 'São Paulo', 195434),
('São Leopoldo', 'BRA', 'Rio Grande do Sul', 189258),
('Marília', 'BRA', 'São Paulo', 188691),
('São Carlos', 'BRA', 'São Paulo', 187122),
('Sumaré', 'BRA', 'São Paulo', 186205),
('Presidente Prudente', 'BRA', 'São Paulo', 185340),
('Divinópolis', 'BRA', 'Minas Gerais', 185047),
('Sete Lagoas', 'BRA', 'Minas Gerais', 182984),
('Rio Grande', 'BRA', 'Rio Grande do Sul', 182222),
('Itabuna', 'BRA', 'Bahia', 182148),
('Jequié', 'BRA', 'Bahia', 179128),
('Arapiraca', 'BRA', 'Alagoas', 178988),
('Colombo', 'BRA', 'Paraná', 177764),
('Americana', 'BRA', 'São Paulo', 177409),
('Alvorada', 'BRA', 'Rio Grande do Sul', 175574),
('Araraquara', 'BRA', 'São Paulo', 174381),
('Itaboraí', 'BRA', 'Rio de Janeiro', 173977),
('Santa Bárbara d´Oeste', 'BRA', 'São Paulo', 171657),
('Nova Friburgo', 'BRA', 'Rio de Janeiro', 170697),
('Jacareí', 'BRA', 'São Paulo', 170356),
('Araçatuba', 'BRA', 'São Paulo', 169303),
('Barra Mansa', 'BRA', 'Rio de Janeiro', 168953),
('Praia Grande', 'BRA', 'São Paulo', 168434),
('Marabá', 'BRA', 'Pará', 167795),
('Criciúma', 'BRA', 'Santa Catarina', 167661),
('Boa Vista', 'BRA', 'Roraima', 167185),
('Passo Fundo', 'BRA', 'Rio Grande do Sul', 166343),
('Dourados', 'BRA', 'Mato Grosso do Sul', 164716),
('Santa Luzia', 'BRA', 'Minas Gerais', 164704),
('Rio Claro', 'BRA', 'São Paulo', 163551),
('Maracanaú', 'BRA', 'Ceará', 162022),
('Guarapuava', 'BRA', 'Paraná', 160510),
('Rondonópolis', 'BRA', 'Mato Grosso', 155115),
('São José', 'BRA', 'Santa Catarina', 155105),
('Cachoeiro de Itapemirim', 'BRA', 'Espírito Santo', 155024),
('Nilópolis', 'BRA', 'Rio de Janeiro', 153383),
('Itapevi', 'BRA', 'São Paulo', 150664),
('Cabo de Santo Agostinho', 'BRA', 'Pernambuco', 149964),
('Camaçari', 'BRA', 'Bahia', 149146),
('Sobral', 'BRA', 'Ceará', 146005),
('Itajaí', 'BRA', 'Santa Catarina', 145197),
('Chapecó', 'BRA', 'Santa Catarina', 144158),
('Cotia', 'BRA', 'São Paulo', 140042),
('Lages', 'BRA', 'Santa Catarina', 139570),
('Ferraz de Vasconcelos', 'BRA', 'São Paulo', 139283),
('Indaiatuba', 'BRA', 'São Paulo', 135968),
('Hortolândia', 'BRA', 'São Paulo', 135755),
('Caxias', 'BRA', 'Maranhão', 133980),
('São Caetano do Sul', 'BRA', 'São Paulo', 133321),
('Itu', 'BRA', 'São Paulo', 132736),
('Nossa Senhora do Socorro', 'BRA', 'Sergipe', 131351),
('Parnaíba', 'BRA', 'Piauí', 129756),
('Poços de Caldas', 'BRA', 'Minas Gerais', 129683),
('Teresópolis', 'BRA', 'Rio de Janeiro', 128079),
('Barreiras', 'BRA', 'Bahia', 127801),
('Castanhal', 'BRA', 'Pará', 127634),
('Alagoinhas', 'BRA', 'Bahia', 126820),
('Itapecerica da Serra', 'BRA', 'São Paulo', 126672),
('Uruguaiana', 'BRA', 'Rio Grande do Sul', 126305),
('Paranaguá', 'BRA', 'Paraná', 126076),
('Ibirité', 'BRA', 'Minas Gerais', 125982),
('Timon', 'BRA', 'Maranhão', 125812),
('Luziânia', 'BRA', 'Goiás', 125597),
('Macaé', 'BRA', 'Rio de Janeiro', 125597),
('Teófilo Otoni', 'BRA', 'Minas Gerais', 124489),
('Moji-Guaçu', 'BRA', 'São Paulo', 123782),
('Palmas', 'BRA', 'Tocantins', 121919),
('Pindamonhangaba', 'BRA', 'São Paulo', 121904),
('Francisco Morato', 'BRA', 'São Paulo', 121197),
('Bagé', 'BRA', 'Rio Grande do Sul', 120793),
('Sapucaia do Sul', 'BRA', 'Rio Grande do Sul', 120217),
('Cabo Frio', 'BRA', 'Rio de Janeiro', 119503),
('Itapetininga', 'BRA', 'São Paulo', 119391),
('Patos de Minas', 'BRA', 'Minas Gerais', 119262),
('Camaragibe', 'BRA', 'Pernambuco', 118968),
('Bragança Paulista', 'BRA', 'São Paulo', 116929),
('Queimados', 'BRA', 'Rio de Janeiro', 115020),
('Araguaína', 'BRA', 'Tocantins', 114948),
('Garanhuns', 'BRA', 'Pernambuco', 114603),
('Vitória de Santo Antão', 'BRA', 'Pernambuco', 113595),
('Santa Rita', 'BRA', 'Paraíba', 113135),
('Barbacena', 'BRA', 'Minas Gerais', 113079),
('Abaetetuba', 'BRA', 'Pará', 111258),
('Jaú', 'BRA', 'São Paulo', 109965),
('Lauro de Freitas', 'BRA', 'Bahia', 109236),
('Franco da Rocha', 'BRA', 'São Paulo', 108964),
('Teixeira de Freitas', 'BRA', 'Bahia', 108441),
('Varginha', 'BRA', 'Minas Gerais', 108314),
('Ribeirão Pires', 'BRA', 'São Paulo', 108121),
('Sabará', 'BRA', 'Minas Gerais', 107781),
('Catanduva', 'BRA', 'São Paulo', 107761),
('Rio Verde', 'BRA', 'Goiás', 107755),
('Botucatu', 'BRA', 'São Paulo', 107663),
('Colatina', 'BRA', 'Espírito Santo', 107354),
('Santa Cruz do Sul', 'BRA', 'Rio Grande do Sul', 106734),
('Linhares', 'BRA', 'Espírito Santo', 106278),
('Apucarana', 'BRA', 'Paraná', 105114),
('Barretos', 'BRA', 'São Paulo', 104156),
('Guaratinguetá', 'BRA', 'São Paulo', 103433),
('Cachoeirinha', 'BRA', 'Rio Grande do Sul', 103240),
('Codó', 'BRA', 'Maranhão', 103153),
('Jaraguá do Sul', 'BRA', 'Santa Catarina', 102580),
('Cubatão', 'BRA', 'São Paulo', 102372),
('Itabira', 'BRA', 'Minas Gerais', 102217),
('Itaituba', 'BRA', 'Pará', 101320),
('Araras', 'BRA', 'São Paulo', 101046),
('Resende', 'BRA', 'Rio de Janeiro', 100627),
('Atibaia', 'BRA', 'São Paulo', 100356),
('Pouso Alegre', 'BRA', 'Minas Gerais', 100028),
('Toledo', 'BRA', 'Paraná', 99387),
('Crato', 'BRA', 'Ceará', 98965),
('Passos', 'BRA', 'Minas Gerais', 98570),
('Araguari', 'BRA', 'Minas Gerais', 98399),
('São José de Ribamar', 'BRA', 'Maranhão', 98318),
('Pinhais', 'BRA', 'Paraná', 98198),
('Sertãozinho', 'BRA', 'São Paulo', 98140),
('Conselheiro Lafaiete', 'BRA', 'Minas Gerais', 97507),
('Paulo Afonso', 'BRA', 'Bahia', 97291),
('Angra dos Reis', 'BRA', 'Rio de Janeiro', 96864),
('Eunápolis', 'BRA', 'Bahia', 96610),
('Salto', 'BRA', 'São Paulo', 96348),
('Ourinhos', 'BRA', 'São Paulo', 96291),
('Parnamirim', 'BRA', 'Rio Grande do Norte', 96210),
('Jacobina', 'BRA', 'Bahia', 96131),
('Coronel Fabriciano', 'BRA', 'Minas Gerais', 95933),
('Birigui', 'BRA', 'São Paulo', 94685),
('Tatuí', 'BRA', 'São Paulo', 93897),
('Ji-Paraná', 'BRA', 'Rondônia', 93346),
('Bacabal', 'BRA', 'Maranhão', 93121),
('Cametá', 'BRA', 'Pará', 92779),
('Guaíba', 'BRA', 'Rio Grande do Sul', 92224),
('São Lourenço da Mata', 'BRA', 'Pernambuco', 91999),
('Santana do Livramento', 'BRA', 'Rio Grande do Sul', 91779),
('Votorantim', 'BRA', 'São Paulo', 91777),
('Campo Largo', 'BRA', 'Paraná', 91203),
('Patos', 'BRA', 'Paraíba', 90519),
('Ituiutaba', 'BRA', 'Minas Gerais', 90507),
('Corumbá', 'BRA', 'Mato Grosso do Sul', 90111),
('Palhoça', 'BRA', 'Santa Catarina', 89465),
('Barra do Piraí', 'BRA', 'Rio de Janeiro', 89388),
('Bento Gonçalves', 'BRA', 'Rio Grande do Sul', 89254),
('Poá', 'BRA', 'São Paulo', 89236),
('Águas Lindas de Goiás', 'BRA', 'Goiás', 89200),
('London', 'GBR', 'England', 7285000),
('Birmingham', 'GBR', 'England', 1013000),
('Glasgow', 'GBR', 'Scotland', 619680),
('Liverpool', 'GBR', 'England', 461000),
('Edinburgh', 'GBR', 'Scotland', 450180),
('Sheffield', 'GBR', 'England', 431607),
('Manchester', 'GBR', 'England', 430000),
('Leeds', 'GBR', 'England', 424194),
('Bristol', 'GBR', 'England', 402000),
('Cardiff', 'GBR', 'Wales', 321000),
('Coventry', 'GBR', 'England', 304000),
('Leicester', 'GBR', 'England', 294000),
('Bradford', 'GBR', 'England', 289376),
('Belfast', 'GBR', 'North Ireland', 287500),
('Nottingham', 'GBR', 'England', 287000),
('Kingston upon Hull', 'GBR', 'England', 262000),
('Plymouth', 'GBR', 'England', 253000),
('Stoke-on-Trent', 'GBR', 'England', 252000),
('Wolverhampton', 'GBR', 'England', 242000),
('Derby', 'GBR', 'England', 236000),
('Swansea', 'GBR', 'Wales', 230000),
('Southampton', 'GBR', 'England', 216000),
('Aberdeen', 'GBR', 'Scotland', 213070),
('Northampton', 'GBR', 'England', 196000),
('Dudley', 'GBR', 'England', 192171),
('Portsmouth', 'GBR', 'England', 190000),
('Newcastle upon Tyne', 'GBR', 'England', 189150),
('Sunderland', 'GBR', 'England', 183310),
('Luton', 'GBR', 'England', 183000),
('Swindon', 'GBR', 'England', 180000),
('Southend-on-Sea', 'GBR', 'England', 176000),
('Walsall', 'GBR', 'England', 174739),
('Bournemouth', 'GBR', 'England', 162000),
('Peterborough', 'GBR', 'England', 156000),
('Brighton', 'GBR', 'England', 156124),
('Blackpool', 'GBR', 'England', 151000),
('Dundee', 'GBR', 'Scotland', 146690),
('West Bromwich', 'GBR', 'England', 146386),
('Reading', 'GBR', 'England', 148000),
('Oldbury/Smethwick (Warley)', 'GBR', 'England', 145542),
('Middlesbrough', 'GBR', 'England', 145000),
('Huddersfield', 'GBR', 'England', 143726),
('Oxford', 'GBR', 'England', 144000),
('Poole', 'GBR', 'England', 141000),
('Bolton', 'GBR', 'England', 139020),
('Blackburn', 'GBR', 'England', 140000),
('Newport', 'GBR', 'Wales', 139000),
('Preston', 'GBR', 'England', 135000),
('Stockport', 'GBR', 'England', 132813),
('Norwich', 'GBR', 'England', 124000),
('Rotherham', 'GBR', 'England', 121380),
('Cambridge', 'GBR', 'England', 121000),
('Watford', 'GBR', 'England', 113080),
('Ipswich', 'GBR', 'England', 114000),
('Slough', 'GBR', 'England', 112000),
('Exeter', 'GBR', 'England', 111000),
('Cheltenham', 'GBR', 'England', 106000),
('Gloucester', 'GBR', 'England', 107000),
('Saint Helens', 'GBR', 'England', 106293),
('Sutton Coldfield', 'GBR', 'England', 106001),
('York', 'GBR', 'England', 104425),
('Oldham', 'GBR', 'England', 103931),
('Basildon', 'GBR', 'England', 100924),
('Worthing', 'GBR', 'England', 100000),
('Chelmsford', 'GBR', 'England', 97451),
('Colchester', 'GBR', 'England', 96063),
('Crawley', 'GBR', 'England', 97000),
('Gillingham', 'GBR', 'England', 92000),
('Solihull', 'GBR', 'England', 94531),
('Rochdale', 'GBR', 'England', 94313),
('Birkenhead', 'GBR', 'England', 93087),
('Worcester', 'GBR', 'England', 95000),
('Hartlepool', 'GBR', 'England', 92000),
('Halifax', 'GBR', 'England', 91069),
('Woking/Byfleet', 'GBR', 'England', 92000),
('Southport', 'GBR', 'England', 90959),
('Maidstone', 'GBR', 'England', 90878),
('Eastbourne', 'GBR', 'England', 90000),
('Grimsby', 'GBR', 'England', 89000),
('Saint Helier', 'GBR', 'Jersey', 27523),
('Douglas', 'GBR', '', 23487),
('Road Town', 'VGB', 'Tortola', 8000),
('Bandar Seri Begawan', 'BRN', 'Brunei and Muara', 21484),
('Sofija', 'BGR', 'Grad Sofija', 1122302),
('Plovdiv', 'BGR', 'Plovdiv', 342584),
('Varna', 'BGR', 'Varna', 299801),
('Burgas', 'BGR', 'Burgas', 195255),
('Ruse', 'BGR', 'Ruse', 166467),
('Stara Zagora', 'BGR', 'Haskovo', 147939),
('Pleven', 'BGR', 'Lovec', 121952),
('Sliven', 'BGR', 'Burgas', 105530),
('Dobric', 'BGR', 'Varna', 100399),
('umen', 'BGR', 'Varna', 94686),
('Ouagadougou', 'BFA', 'Kadiogo', 824000),
('Bobo-Dioulasso', 'BFA', 'Houet', 300000),
('Koudougou', 'BFA', 'Boulkiemdé', 105000),
('Bujumbura', 'BDI', 'Bujumbura', 300000),
('George Town', 'CYM', 'Grand Cayman', 19600),
('Santiago de Chile', 'CHL', 'Santiago', 4703954),
('Puente Alto', 'CHL', 'Santiago', 386236),
('Viña del Mar', 'CHL', 'Valparaíso', 312493),
('Valparaíso', 'CHL', 'Valparaíso', 293800),
('Talcahuano', 'CHL', 'Bíobío', 277752),
('Antofagasta', 'CHL', 'Antofagasta', 251429),
('San Bernardo', 'CHL', 'Santiago', 241910),
('Temuco', 'CHL', 'La Araucanía', 233041),
('Concepción', 'CHL', 'Bíobío', 217664),
('Rancagua', 'CHL', 'O´Higgins', 212977),
('Arica', 'CHL', 'Tarapacá', 189036),
('Talca', 'CHL', 'Maule', 187557),
('Chillán', 'CHL', 'Bíobío', 178182),
('Iquique', 'CHL', 'Tarapacá', 177892),
('Los Angeles', 'CHL', 'Bíobío', 158215),
('Puerto Montt', 'CHL', 'Los Lagos', 152194),
('Coquimbo', 'CHL', 'Coquimbo', 143353),
('Osorno', 'CHL', 'Los Lagos', 141468),
('La Serena', 'CHL', 'Coquimbo', 137409),
('Calama', 'CHL', 'Antofagasta', 137265),
('Valdivia', 'CHL', 'Los Lagos', 133106),
('Punta Arenas', 'CHL', 'Magallanes', 125631),
('Copiapó', 'CHL', 'Atacama', 120128),
('Quilpué', 'CHL', 'Valparaíso', 118857),
('Curicó', 'CHL', 'Maule', 115766),
('Ovalle', 'CHL', 'Coquimbo', 94854),
('Coronel', 'CHL', 'Bíobío', 93061),
('San Pedro de la Paz', 'CHL', 'Bíobío', 91684),
('Melipilla', 'CHL', 'Santiago', 91056),
('Avarua', 'COK', 'Rarotonga', 11900),
('San José', 'CRI', 'San José', 339131),
('Djibouti', 'DJI', 'Djibouti', 383000),
('Roseau', 'DMA', 'St George', 16243),
('Santo Domingo de Guzmán', 'DOM', 'Distrito Nacional', 1609966),
('Santiago de los Caballeros', 'DOM', 'Santiago', 365463),
('La Romana', 'DOM', 'La Romana', 140204),
('San Pedro de Macorís', 'DOM', 'San Pedro de Macorís', 124735),
('San Francisco de Macorís', 'DOM', 'Duarte', 108485),
('San Felipe de Puerto Plata', 'DOM', 'Puerto Plata', 89423),
('Guayaquil', 'ECU', 'Guayas', 2070040),
('Quito', 'ECU', 'Pichincha', 1573458),
('Cuenca', 'ECU', 'Azuay', 270353),
('Machala', 'ECU', 'El Oro', 210368),
('Santo Domingo de los Colorados', 'ECU', 'Pichincha', 202111),
('Portoviejo', 'ECU', 'Manabí', 176413),
('Ambato', 'ECU', 'Tungurahua', 169612),
('Manta', 'ECU', 'Manabí', 164739),
('Duran [Eloy Alfaro]', 'ECU', 'Guayas', 152514),
('Ibarra', 'ECU', 'Imbabura', 130643),
('Quevedo', 'ECU', 'Los Ríos', 129631),
('Milagro', 'ECU', 'Guayas', 124177),
('Loja', 'ECU', 'Loja', 123875),
('Ríobamba', 'ECU', 'Chimborazo', 123163),
('Esmeraldas', 'ECU', 'Esmeraldas', 123045),
('Cairo', 'EGY', 'Kairo', 6789479),
('Alexandria', 'EGY', 'Aleksandria', 3328196),
('Giza', 'EGY', 'Giza', 2221868),
('Shubra al-Khayma', 'EGY', 'al-Qalyubiya', 870716),
('Port Said', 'EGY', 'Port Said', 469533),
('Suez', 'EGY', 'Suez', 417610),
('al-Mahallat al-Kubra', 'EGY', 'al-Gharbiya', 395402),
('Tanta', 'EGY', 'al-Gharbiya', 371010),
('al-Mansura', 'EGY', 'al-Daqahliya', 369621),
('Luxor', 'EGY', 'Luxor', 360503),
('Asyut', 'EGY', 'Asyut', 343498),
('Bahtim', 'EGY', 'al-Qalyubiya', 275807),
('Zagazig', 'EGY', 'al-Sharqiya', 267351),
('al-Faiyum', 'EGY', 'al-Faiyum', 260964),
('Ismailia', 'EGY', 'Ismailia', 254477),
('Kafr al-Dawwar', 'EGY', 'al-Buhayra', 231978),
('Assuan', 'EGY', 'Assuan', 219017),
('Damanhur', 'EGY', 'al-Buhayra', 212203),
('al-Minya', 'EGY', 'al-Minya', 201360),
('Bani Suwayf', 'EGY', 'Bani Suwayf', 172032),
('Qina', 'EGY', 'Qina', 171275),
('Sawhaj', 'EGY', 'Sawhaj', 170125),
('Shibin al-Kawm', 'EGY', 'al-Minufiya', 159909),
('Bulaq al-Dakrur', 'EGY', 'Giza', 148787),
('Banha', 'EGY', 'al-Qalyubiya', 145792),
('Warraq al-Arab', 'EGY', 'Giza', 127108),
('Kafr al-Shaykh', 'EGY', 'Kafr al-Shaykh', 124819),
('Mallawi', 'EGY', 'al-Minya', 119283),
('Bilbays', 'EGY', 'al-Sharqiya', 113608),
('Mit Ghamr', 'EGY', 'al-Daqahliya', 101801),
('al-Arish', 'EGY', 'Shamal Sina', 100447),
('Talkha', 'EGY', 'al-Daqahliya', 97700),
('Qalyub', 'EGY', 'al-Qalyubiya', 97200),
('Jirja', 'EGY', 'Sawhaj', 95400),
('Idfu', 'EGY', 'Qina', 94200),
('al-Hawamidiya', 'EGY', 'Giza', 91700),
('Disuq', 'EGY', 'Kafr al-Shaykh', 91300),
('San Salvador', 'SLV', 'San Salvador', 415346),
('Santa Ana', 'SLV', 'Santa Ana', 139389),
('Mejicanos', 'SLV', 'San Salvador', 138800),
('Soyapango', 'SLV', 'San Salvador', 129800),
('San Miguel', 'SLV', 'San Miguel', 127696),
('Nueva San Salvador', 'SLV', 'La Libertad', 98400),
('Apopa', 'SLV', 'San Salvador', 88800),
('Asmara', 'ERI', 'Maekel', 431000),
('Madrid', 'ESP', 'Madrid', 2879052),
('Barcelona', 'ESP', 'Katalonia', 1503451),
('Valencia', 'ESP', 'Valencia', 739412),
('Sevilla', 'ESP', 'Andalusia', 701927),
('Zaragoza', 'ESP', 'Aragonia', 603367),
('Málaga', 'ESP', 'Andalusia', 530553),
('Bilbao', 'ESP', 'Baskimaa', 357589),
('Las Palmas de Gran Canaria', 'ESP', 'Canary Islands', 354757),
('Murcia', 'ESP', 'Murcia', 353504),
('Palma de Mallorca', 'ESP', 'Balears', 326993),
('Valladolid', 'ESP', 'Castilla and León', 319998),
('Córdoba', 'ESP', 'Andalusia', 311708),
('Vigo', 'ESP', 'Galicia', 283670),
('Alicante [Alacant]', 'ESP', 'Valencia', 272432),
('Gijón', 'ESP', 'Asturia', 267980),
('L´Hospitalet de Llobregat', 'ESP', 'Katalonia', 247986),
('Granada', 'ESP', 'Andalusia', 244767),
('A Coruña (La Coruña)', 'ESP', 'Galicia', 243402),
('Vitoria-Gasteiz', 'ESP', 'Baskimaa', 217154),
('Santa Cruz de Tenerife', 'ESP', 'Canary Islands', 213050),
('Badalona', 'ESP', 'Katalonia', 209635),
('Oviedo', 'ESP', 'Asturia', 200453),
('Móstoles', 'ESP', 'Madrid', 195351),
('Elche [Elx]', 'ESP', 'Valencia', 193174),
('Sabadell', 'ESP', 'Katalonia', 184859),
('Santander', 'ESP', 'Cantabria', 184165),
('Jerez de la Frontera', 'ESP', 'Andalusia', 182660),
('Pamplona [Iruña]', 'ESP', 'Navarra', 180483),
('Donostia-San Sebastián', 'ESP', 'Baskimaa', 179208),
('Cartagena', 'ESP', 'Murcia', 177709),
('Leganés', 'ESP', 'Madrid', 173163),
('Fuenlabrada', 'ESP', 'Madrid', 171173),
('Almería', 'ESP', 'Andalusia', 169027),
('Terrassa', 'ESP', 'Katalonia', 168695),
('Alcalá de Henares', 'ESP', 'Madrid', 164463),
('Burgos', 'ESP', 'Castilla and León', 162802),
('Salamanca', 'ESP', 'Castilla and León', 158720),
('Albacete', 'ESP', 'Kastilia-La Mancha', 147527),
('Getafe', 'ESP', 'Madrid', 145371),
('Cádiz', 'ESP', 'Andalusia', 142449),
('Alcorcón', 'ESP', 'Madrid', 142048),
('Huelva', 'ESP', 'Andalusia', 140583),
('León', 'ESP', 'Castilla and León', 139809),
('Castellón de la Plana [Castell', 'ESP', 'Valencia', 139712),
('Badajoz', 'ESP', 'Extremadura', 136613),
('[San Cristóbal de] la Laguna', 'ESP', 'Canary Islands', 127945),
('Logroño', 'ESP', 'La Rioja', 127093),
('Santa Coloma de Gramenet', 'ESP', 'Katalonia', 120802),
('Tarragona', 'ESP', 'Katalonia', 113016),
('Lleida (Lérida)', 'ESP', 'Katalonia', 112207),
('Jaén', 'ESP', 'Andalusia', 109247),
('Ourense (Orense)', 'ESP', 'Galicia', 109120),
('Mataró', 'ESP', 'Katalonia', 104095),
('Algeciras', 'ESP', 'Andalusia', 103106),
('Marbella', 'ESP', 'Andalusia', 101144),
('Barakaldo', 'ESP', 'Baskimaa', 98212),
('Dos Hermanas', 'ESP', 'Andalusia', 94591),
('Santiago de Compostela', 'ESP', 'Galicia', 93745),
('Torrejón de Ardoz', 'ESP', 'Madrid', 92262),
('Cape Town', 'ZAF', 'Western Cape', 2352121),
('Soweto', 'ZAF', 'Gauteng', 904165),
('Johannesburg', 'ZAF', 'Gauteng', 756653),
('Port Elizabeth', 'ZAF', 'Eastern Cape', 752319),
('Pretoria', 'ZAF', 'Gauteng', 658630),
('Inanda', 'ZAF', 'KwaZulu-Natal', 634065),
('Durban', 'ZAF', 'KwaZulu-Natal', 566120),
('Vanderbijlpark', 'ZAF', 'Gauteng', 468931),
('Kempton Park', 'ZAF', 'Gauteng', 442633),
('Alberton', 'ZAF', 'Gauteng', 410102),
('Pinetown', 'ZAF', 'KwaZulu-Natal', 378810),
('Pietermaritzburg', 'ZAF', 'KwaZulu-Natal', 370190),
('Benoni', 'ZAF', 'Gauteng', 365467),
('Randburg', 'ZAF', 'Gauteng', 341288),
('Umlazi', 'ZAF', 'KwaZulu-Natal', 339233),
('Bloemfontein', 'ZAF', 'Free State', 334341),
('Vereeniging', 'ZAF', 'Gauteng', 328535),
('Wonderboom', 'ZAF', 'Gauteng', 283289),
('Roodepoort', 'ZAF', 'Gauteng', 279340),
('Boksburg', 'ZAF', 'Gauteng', 262648),
('Klerksdorp', 'ZAF', 'North West', 261911),
('Soshanguve', 'ZAF', 'Gauteng', 242727),
('Newcastle', 'ZAF', 'KwaZulu-Natal', 222993),
('East London', 'ZAF', 'Eastern Cape', 221047),
('Welkom', 'ZAF', 'Free State', 203296),
('Kimberley', 'ZAF', 'Northern Cape', 197254),
('Uitenhage', 'ZAF', 'Eastern Cape', 192120),
('Chatsworth', 'ZAF', 'KwaZulu-Natal', 189885),
('Mdantsane', 'ZAF', 'Eastern Cape', 182639),
('Krugersdorp', 'ZAF', 'Gauteng', 181503),
('Botshabelo', 'ZAF', 'Free State', 177971),
('Brakpan', 'ZAF', 'Gauteng', 171363),
('Witbank', 'ZAF', 'Mpumalanga', 167183),
('Oberholzer', 'ZAF', 'Gauteng', 164367),
('Germiston', 'ZAF', 'Gauteng', 164252),
('Springs', 'ZAF', 'Gauteng', 162072),
('Westonaria', 'ZAF', 'Gauteng', 159632),
('Randfontein', 'ZAF', 'Gauteng', 120838),
('Paarl', 'ZAF', 'Western Cape', 105768),
('Potchefstroom', 'ZAF', 'North West', 101817),
('Rustenburg', 'ZAF', 'North West', 97008),
('Nigel', 'ZAF', 'Gauteng', 96734),
('George', 'ZAF', 'Western Cape', 93818),
('Ladysmith', 'ZAF', 'KwaZulu-Natal', 89292),
('Addis Abeba', 'ETH', 'Addis Abeba', 2495000),
('Dire Dawa', 'ETH', 'Dire Dawa', 164851),
('Nazret', 'ETH', 'Oromia', 127842),
('Gonder', 'ETH', 'Amhara', 112249),
('Dese', 'ETH', 'Amhara', 97314),
('Mekele', 'ETH', 'Tigray', 96938),
('Bahir Dar', 'ETH', 'Amhara', 96140),
('Stanley', 'FLK', 'East Falkland', 1636),
('Suva', 'FJI', 'Central', 77366),
('Quezon', 'PHL', 'National Capital Reg', 2173831),
('Manila', 'PHL', 'National Capital Reg', 1581082),
('Kalookan', 'PHL', 'National Capital Reg', 1177604),
('Davao', 'PHL', 'Southern Mindanao', 1147116),
('Cebu', 'PHL', 'Central Visayas', 718821),
('Zamboanga', 'PHL', 'Western Mindanao', 601794),
('Pasig', 'PHL', 'National Capital Reg', 505058),
('Valenzuela', 'PHL', 'National Capital Reg', 485433),
('Las Piñas', 'PHL', 'National Capital Reg', 472780),
('Antipolo', 'PHL', 'Southern Tagalog', 470866),
('Taguig', 'PHL', 'National Capital Reg', 467375),
('Cagayan de Oro', 'PHL', 'Northern Mindanao', 461877),
('Parañaque', 'PHL', 'National Capital Reg', 449811),
('Makati', 'PHL', 'National Capital Reg', 444867),
('Bacolod', 'PHL', 'Western Visayas', 429076),
('General Santos', 'PHL', 'Southern Mindanao', 411822),
('Marikina', 'PHL', 'National Capital Reg', 391170),
('Dasmariñas', 'PHL', 'Southern Tagalog', 379520),
('Muntinlupa', 'PHL', 'National Capital Reg', 379310),
('Iloilo', 'PHL', 'Western Visayas', 365820),
('Pasay', 'PHL', 'National Capital Reg', 354908),
('Malabon', 'PHL', 'National Capital Reg', 338855),
('San José del Monte', 'PHL', 'Central Luzon', 315807),
('Bacoor', 'PHL', 'Southern Tagalog', 305699),
('Iligan', 'PHL', 'Central Mindanao', 285061),
('Calamba', 'PHL', 'Southern Tagalog', 281146),
('Mandaluyong', 'PHL', 'National Capital Reg', 278474),
('Butuan', 'PHL', 'Caraga', 267279),
('Angeles', 'PHL', 'Central Luzon', 263971),
('Tarlac', 'PHL', 'Central Luzon', 262481),
('Mandaue', 'PHL', 'Central Visayas', 259728),
('Baguio', 'PHL', 'CAR', 252386),
('Batangas', 'PHL', 'Southern Tagalog', 247588),
('Cainta', 'PHL', 'Southern Tagalog', 242511),
('San Pedro', 'PHL', 'Southern Tagalog', 231403),
('Navotas', 'PHL', 'National Capital Reg', 230403),
('Cabanatuan', 'PHL', 'Central Luzon', 222859),
('San Fernando', 'PHL', 'Central Luzon', 221857),
('Lipa', 'PHL', 'Southern Tagalog', 218447),
('Lapu-Lapu', 'PHL', 'Central Visayas', 217019),
('San Pablo', 'PHL', 'Southern Tagalog', 207927),
('Biñan', 'PHL', 'Southern Tagalog', 201186),
('Taytay', 'PHL', 'Southern Tagalog', 198183),
('Lucena', 'PHL', 'Southern Tagalog', 196075),
('Imus', 'PHL', 'Southern Tagalog', 195482),
('Olongapo', 'PHL', 'Central Luzon', 194260),
('Binangonan', 'PHL', 'Southern Tagalog', 187691),
('Santa Rosa', 'PHL', 'Southern Tagalog', 185633),
('Tagum', 'PHL', 'Southern Mindanao', 179531),
('Tacloban', 'PHL', 'Eastern Visayas', 178639),
('Malolos', 'PHL', 'Central Luzon', 175291),
('Mabalacat', 'PHL', 'Central Luzon', 171045),
('Cotabato', 'PHL', 'Central Mindanao', 163849),
('Meycauayan', 'PHL', 'Central Luzon', 163037),
('Puerto Princesa', 'PHL', 'Southern Tagalog', 161912),
('Legazpi', 'PHL', 'Bicol', 157010),
('Silang', 'PHL', 'Southern Tagalog', 156137),
('Ormoc', 'PHL', 'Eastern Visayas', 154297),
('San Carlos', 'PHL', 'Ilocos', 154264),
('Kabankalan', 'PHL', 'Western Visayas', 149769),
('Talisay', 'PHL', 'Central Visayas', 148110),
('Valencia', 'PHL', 'Northern Mindanao', 147924),
('Calbayog', 'PHL', 'Eastern Visayas', 147187),
('Santa Maria', 'PHL', 'Central Luzon', 144282),
('Pagadian', 'PHL', 'Western Mindanao', 142515),
('Cadiz', 'PHL', 'Western Visayas', 141954),
('Bago', 'PHL', 'Western Visayas', 141721),
('Toledo', 'PHL', 'Central Visayas', 141174),
('Naga', 'PHL', 'Bicol', 137810),
('San Mateo', 'PHL', 'Southern Tagalog', 135603),
('Panabo', 'PHL', 'Southern Mindanao', 133950),
('Koronadal', 'PHL', 'Southern Mindanao', 133786),
('Marawi', 'PHL', 'Central Mindanao', 131090),
('Dagupan', 'PHL', 'Ilocos', 130328),
('Sagay', 'PHL', 'Western Visayas', 129765),
('Roxas', 'PHL', 'Western Visayas', 126352),
('Lubao', 'PHL', 'Central Luzon', 125699),
('Digos', 'PHL', 'Southern Mindanao', 125171),
('San Miguel', 'PHL', 'Central Luzon', 123824),
('Malaybalay', 'PHL', 'Northern Mindanao', 123672),
('Tuguegarao', 'PHL', 'Cagayan Valley', 120645),
('Ilagan', 'PHL', 'Cagayan Valley', 119990),
('Baliuag', 'PHL', 'Central Luzon', 119675),
('Surigao', 'PHL', 'Caraga', 118534),
('San Carlos', 'PHL', 'Western Visayas', 118259),
('San Juan del Monte', 'PHL', 'National Capital Reg', 117680),
('Tanauan', 'PHL', 'Southern Tagalog', 117539),
('Concepcion', 'PHL', 'Central Luzon', 115171),
('Rodriguez (Montalban)', 'PHL', 'Southern Tagalog', 115167),
('Sariaya', 'PHL', 'Southern Tagalog', 114568),
('Malasiqui', 'PHL', 'Ilocos', 113190),
('General Mariano Alvarez', 'PHL', 'Southern Tagalog', 112446),
('Urdaneta', 'PHL', 'Ilocos', 111582),
('Hagonoy', 'PHL', 'Central Luzon', 111425),
('San Jose', 'PHL', 'Southern Tagalog', 111009),
('Polomolok', 'PHL', 'Southern Mindanao', 110709),
('Santiago', 'PHL', 'Cagayan Valley', 110531),
('Tanza', 'PHL', 'Southern Tagalog', 110517),
('Ozamis', 'PHL', 'Northern Mindanao', 110420),
('Mexico', 'PHL', 'Central Luzon', 109481),
('San Jose', 'PHL', 'Central Luzon', 108254),
('Silay', 'PHL', 'Western Visayas', 107722),
('General Trias', 'PHL', 'Southern Tagalog', 107691),
('Tabaco', 'PHL', 'Bicol', 107166),
('Cabuyao', 'PHL', 'Southern Tagalog', 106630),
('Calapan', 'PHL', 'Southern Tagalog', 105910),
('Mati', 'PHL', 'Southern Mindanao', 105908),
('Midsayap', 'PHL', 'Central Mindanao', 105760),
('Cauayan', 'PHL', 'Cagayan Valley', 103952),
('Gingoog', 'PHL', 'Northern Mindanao', 102379),
('Dumaguete', 'PHL', 'Central Visayas', 102265),
('San Fernando', 'PHL', 'Ilocos', 102082),
('Arayat', 'PHL', 'Central Luzon', 101792),
('Bayawan (Tulong)', 'PHL', 'Central Visayas', 101391),
('Kidapawan', 'PHL', 'Central Mindanao', 101205),
('Daraga (Locsin)', 'PHL', 'Bicol', 101031),
('Marilao', 'PHL', 'Central Luzon', 101017),
('Malita', 'PHL', 'Southern Mindanao', 100000),
('Dipolog', 'PHL', 'Western Mindanao', 99862),
('Cavite', 'PHL', 'Southern Tagalog', 99367),
('Danao', 'PHL', 'Central Visayas', 98781),
('Bislig', 'PHL', 'Caraga', 97860),
('Talavera', 'PHL', 'Central Luzon', 97329),
('Guagua', 'PHL', 'Central Luzon', 96858),
('Bayambang', 'PHL', 'Ilocos', 96609),
('Nasugbu', 'PHL', 'Southern Tagalog', 96113),
('Baybay', 'PHL', 'Eastern Visayas', 95630),
('Capas', 'PHL', 'Central Luzon', 95219),
('Sultan Kudarat', 'PHL', 'ARMM', 94861),
('Laoag', 'PHL', 'Ilocos', 94466),
('Bayugan', 'PHL', 'Caraga', 93623),
('Malungon', 'PHL', 'Southern Mindanao', 93232),
('Santa Cruz', 'PHL', 'Southern Tagalog', 92694),
('Sorsogon', 'PHL', 'Bicol', 92512),
('Candelaria', 'PHL', 'Southern Tagalog', 92429),
('Ligao', 'PHL', 'Bicol', 90603),
('Tórshavn', 'FRO', 'Streymoyar', 14542),
('Libreville', 'GAB', 'Estuaire', 419000),
('Serekunda', 'GMB', 'Kombo St Mary', 102600),
('Banjul', 'GMB', 'Banjul', 42326),
('Tbilisi', 'GEO', 'Tbilisi', 1235200),
('Kutaisi', 'GEO', 'Imereti', 240900),
('Rustavi', 'GEO', 'Kvemo Kartli', 155400),
('Batumi', 'GEO', 'Adzaria [Atara]', 137700),
('Sohumi', 'GEO', 'Abhasia [Aphazeti]', 111700),
('Accra', 'GHA', 'Greater Accra', 1070000),
('Kumasi', 'GHA', 'Ashanti', 385192),
('Tamale', 'GHA', 'Northern', 151069),
('Tema', 'GHA', 'Greater Accra', 109975),
('Sekondi-Takoradi', 'GHA', 'Western', 103653),
('Gibraltar', 'GIB', '', 27025),
('Saint George´s', 'GRD', 'St George', 4621),
('Nuuk', 'GRL', 'Kitaa', 13445),
('Les Abymes', 'GLP', 'Grande-Terre', 62947),
('Basse-Terre', 'GLP', 'Basse-Terre', 12433),
('Tamuning', 'GUM', '', 9500),
('Agaña', 'GUM', '', 1139),
('Ciudad de Guatemala', 'GTM', 'Guatemala', 823301),
('Mixco', 'GTM', 'Guatemala', 209791),
('Villa Nueva', 'GTM', 'Guatemala', 101295),
('Quetzaltenango', 'GTM', 'Quetzaltenango', 90801),
('Conakry', 'GIN', 'Conakry', 1090610),
('Bissau', 'GNB', 'Bissau', 241000),
('Georgetown', 'GUY', 'Georgetown', 254000),
('Port-au-Prince', 'HTI', 'Ouest', 884472),
('Carrefour', 'HTI', 'Ouest', 290204),
('Delmas', 'HTI', 'Ouest', 240429),
('Le-Cap-Haïtien', 'HTI', 'Nord', 102233),
('Tegucigalpa', 'HND', 'Distrito Central', 813900),
('San Pedro Sula', 'HND', 'Cortés', 383900),
('La Ceiba', 'HND', 'Atlántida', 89200),
('Kowloon and New Kowloon', 'HKG', 'Kowloon and New Kowl', 1987996),
('Victoria', 'HKG', 'Hongkong', 1312637),
('Longyearbyen', 'SJM', 'Länsimaa', 1438),
('Jakarta', 'IDN', 'Jakarta Raya', 9604900),
('Surabaya', 'IDN', 'East Java', 2663820),
('Bandung', 'IDN', 'West Java', 2429000),
('Medan', 'IDN', 'Sumatera Utara', 1843919),
('Palembang', 'IDN', 'Sumatera Selatan', 1222764),
('Tangerang', 'IDN', 'West Java', 1198300),
('Semarang', 'IDN', 'Central Java', 1104405),
('Ujung Pandang', 'IDN', 'Sulawesi Selatan', 1060257),
('Malang', 'IDN', 'East Java', 716862),
('Bandar Lampung', 'IDN', 'Lampung', 680332),
('Bekasi', 'IDN', 'West Java', 644300),
('Padang', 'IDN', 'Sumatera Barat', 534474),
('Surakarta', 'IDN', 'Central Java', 518600),
('Banjarmasin', 'IDN', 'Kalimantan Selatan', 482931),
('Pekan Baru', 'IDN', 'Riau', 438638),
('Denpasar', 'IDN', 'Bali', 435000),
('Yogyakarta', 'IDN', 'Yogyakarta', 418944),
('Pontianak', 'IDN', 'Kalimantan Barat', 409632),
('Samarinda', 'IDN', 'Kalimantan Timur', 399175),
('Jambi', 'IDN', 'Jambi', 385201),
('Depok', 'IDN', 'West Java', 365200),
('Cimahi', 'IDN', 'West Java', 344600),
('Balikpapan', 'IDN', 'Kalimantan Timur', 338752),
('Manado', 'IDN', 'Sulawesi Utara', 332288),
('Mataram', 'IDN', 'Nusa Tenggara Barat', 306600),
('Pekalongan', 'IDN', 'Central Java', 301504),
('Tegal', 'IDN', 'Central Java', 289744),
('Bogor', 'IDN', 'West Java', 285114),
('Ciputat', 'IDN', 'West Java', 270800),
('Pondokgede', 'IDN', 'West Java', 263200),
('Cirebon', 'IDN', 'West Java', 254406),
('Kediri', 'IDN', 'East Java', 253760),
('Ambon', 'IDN', 'Molukit', 249312),
('Jember', 'IDN', 'East Java', 218500),
('Cilacap', 'IDN', 'Central Java', 206900),
('Cimanggis', 'IDN', 'West Java', 205100),
('Pematang Siantar', 'IDN', 'Sumatera Utara', 203056),
('Purwokerto', 'IDN', 'Central Java', 202500),
('Ciomas', 'IDN', 'West Java', 187400),
('Tasikmalaya', 'IDN', 'West Java', 179800),
('Madiun', 'IDN', 'East Java', 171532),
('Bengkulu', 'IDN', 'Bengkulu', 146439),
('Karawang', 'IDN', 'West Java', 145000),
('Banda Aceh', 'IDN', 'Aceh', 143409),
('Palu', 'IDN', 'Sulawesi Tengah', 142800),
('Pasuruan', 'IDN', 'East Java', 134019),
('Kupang', 'IDN', 'Nusa Tenggara Timur', 129300),
('Tebing Tinggi', 'IDN', 'Sumatera Utara', 129300),
('Percut Sei Tuan', 'IDN', 'Sumatera Utara', 129000),
('Binjai', 'IDN', 'Sumatera Utara', 127222),
('Sukabumi', 'IDN', 'West Java', 125766),
('Waru', 'IDN', 'East Java', 124300),
('Pangkal Pinang', 'IDN', 'Sumatera Selatan', 124000),
('Magelang', 'IDN', 'Central Java', 123800),
('Blitar', 'IDN', 'East Java', 122600),
('Serang', 'IDN', 'West Java', 122400),
('Probolinggo', 'IDN', 'East Java', 120770),
('Cilegon', 'IDN', 'West Java', 117000),
('Cianjur', 'IDN', 'West Java', 114300),
('Ciparay', 'IDN', 'West Java', 111500),
('Lhokseumawe', 'IDN', 'Aceh', 109600),
('Taman', 'IDN', 'East Java', 107000),
('Depok', 'IDN', 'Yogyakarta', 106800),
('Citeureup', 'IDN', 'West Java', 105100),
('Pemalang', 'IDN', 'Central Java', 103500),
('Klaten', 'IDN', 'Central Java', 103300),
('Salatiga', 'IDN', 'Central Java', 103000),
('Cibinong', 'IDN', 'West Java', 101300),
('Palangka Raya', 'IDN', 'Kalimantan Tengah', 99693),
('Mojokerto', 'IDN', 'East Java', 96626),
('Purwakarta', 'IDN', 'West Java', 95900),
('Garut', 'IDN', 'West Java', 95800),
('Kudus', 'IDN', 'Central Java', 95300),
('Kendari', 'IDN', 'Sulawesi Tenggara', 94800),
('Jaya Pura', 'IDN', 'West Irian', 94700),
('Gorontalo', 'IDN', 'Sulawesi Utara', 94058),
('Majalaya', 'IDN', 'West Java', 93200),
('Pondok Aren', 'IDN', 'West Java', 92700),
('Jombang', 'IDN', 'East Java', 92600),
('Sunggal', 'IDN', 'Sumatera Utara', 92300),
('Batam', 'IDN', 'Riau', 91871),
('Padang Sidempuan', 'IDN', 'Sumatera Utara', 91200),
('Sawangan', 'IDN', 'West Java', 91100),
('Banyuwangi', 'IDN', 'East Java', 89900),
('Tanjung Pinang', 'IDN', 'Riau', 89900),
('Mumbai (Bombay)', 'IND', 'Maharashtra', 10500000),
('Delhi', 'IND', 'Delhi', 7206704),
('Calcutta [Kolkata]', 'IND', 'West Bengali', 4399819),
('Chennai (Madras)', 'IND', 'Tamil Nadu', 3841396),
('Hyderabad', 'IND', 'Andhra Pradesh', 2964638),
('Ahmedabad', 'IND', 'Gujarat', 2876710),
('Bangalore', 'IND', 'Karnataka', 2660088),
('Kanpur', 'IND', 'Uttar Pradesh', 1874409),
('Nagpur', 'IND', 'Maharashtra', 1624752),
('Lucknow', 'IND', 'Uttar Pradesh', 1619115),
('Pune', 'IND', 'Maharashtra', 1566651),
('Surat', 'IND', 'Gujarat', 1498817),
('Jaipur', 'IND', 'Rajasthan', 1458483),
('Indore', 'IND', 'Madhya Pradesh', 1091674),
('Bhopal', 'IND', 'Madhya Pradesh', 1062771),
('Ludhiana', 'IND', 'Punjab', 1042740),
('Vadodara (Baroda)', 'IND', 'Gujarat', 1031346),
('Kalyan', 'IND', 'Maharashtra', 1014557),
('Madurai', 'IND', 'Tamil Nadu', 977856),
('Haora (Howrah)', 'IND', 'West Bengali', 950435),
('Varanasi (Benares)', 'IND', 'Uttar Pradesh', 929270),
('Patna', 'IND', 'Bihar', 917243),
('Srinagar', 'IND', 'Jammu and Kashmir', 892506),
('Agra', 'IND', 'Uttar Pradesh', 891790),
('Coimbatore', 'IND', 'Tamil Nadu', 816321),
('Thane (Thana)', 'IND', 'Maharashtra', 803389),
('Allahabad', 'IND', 'Uttar Pradesh', 792858),
('Meerut', 'IND', 'Uttar Pradesh', 753778),
('Vishakhapatnam', 'IND', 'Andhra Pradesh', 752037),
('Jabalpur', 'IND', 'Madhya Pradesh', 741927),
('Amritsar', 'IND', 'Punjab', 708835),
('Faridabad', 'IND', 'Haryana', 703592),
('Vijayawada', 'IND', 'Andhra Pradesh', 701827),
('Gwalior', 'IND', 'Madhya Pradesh', 690765),
('Jodhpur', 'IND', 'Rajasthan', 666279),
('Nashik (Nasik)', 'IND', 'Maharashtra', 656925),
('Hubli-Dharwad', 'IND', 'Karnataka', 648298),
('Solapur (Sholapur)', 'IND', 'Maharashtra', 604215),
('Ranchi', 'IND', 'Jharkhand', 599306),
('Bareilly', 'IND', 'Uttar Pradesh', 587211),
('Guwahati (Gauhati)', 'IND', 'Assam', 584342),
('Shambajinagar (Aurangabad)', 'IND', 'Maharashtra', 573272),
('Cochin (Kochi)', 'IND', 'Kerala', 564589),
('Rajkot', 'IND', 'Gujarat', 559407),
('Kota', 'IND', 'Rajasthan', 537371),
('Thiruvananthapuram (Trivandrum', 'IND', 'Kerala', 524006),
('Pimpri-Chinchwad', 'IND', 'Maharashtra', 517083),
('Jalandhar (Jullundur)', 'IND', 'Punjab', 509510),
('Gorakhpur', 'IND', 'Uttar Pradesh', 505566),
('Chandigarh', 'IND', 'Chandigarh', 504094),
('Mysore', 'IND', 'Karnataka', 480692),
('Aligarh', 'IND', 'Uttar Pradesh', 480520),
('Guntur', 'IND', 'Andhra Pradesh', 471051),
('Jamshedpur', 'IND', 'Jharkhand', 460577),
('Ghaziabad', 'IND', 'Uttar Pradesh', 454156),
('Warangal', 'IND', 'Andhra Pradesh', 447657),
('Raipur', 'IND', 'Chhatisgarh', 438639),
('Moradabad', 'IND', 'Uttar Pradesh', 429214),
('Durgapur', 'IND', 'West Bengali', 425836),
('Amravati', 'IND', 'Maharashtra', 421576),
('Calicut (Kozhikode)', 'IND', 'Kerala', 419831),
('Bikaner', 'IND', 'Rajasthan', 416289),
('Bhubaneswar', 'IND', 'Orissa', 411542),
('Kolhapur', 'IND', 'Maharashtra', 406370),
('Kataka (Cuttack)', 'IND', 'Orissa', 403418),
('Ajmer', 'IND', 'Rajasthan', 402700),
('Bhavnagar', 'IND', 'Gujarat', 402338),
('Tiruchirapalli', 'IND', 'Tamil Nadu', 387223),
('Bhilai', 'IND', 'Chhatisgarh', 386159),
('Bhiwandi', 'IND', 'Maharashtra', 379070),
('Saharanpur', 'IND', 'Uttar Pradesh', 374945),
('Ulhasnagar', 'IND', 'Maharashtra', 369077),
('Salem', 'IND', 'Tamil Nadu', 366712),
('Ujjain', 'IND', 'Madhya Pradesh', 362266),
('Malegaon', 'IND', 'Maharashtra', 342595),
('Jamnagar', 'IND', 'Gujarat', 341637),
('Bokaro Steel City', 'IND', 'Jharkhand', 333683),
('Akola', 'IND', 'Maharashtra', 328034),
('Belgaum', 'IND', 'Karnataka', 326399),
('Rajahmundry', 'IND', 'Andhra Pradesh', 324851),
('Nellore', 'IND', 'Andhra Pradesh', 316606),
('Udaipur', 'IND', 'Rajasthan', 308571),
('New Bombay', 'IND', 'Maharashtra', 307297),
('Bhatpara', 'IND', 'West Bengali', 304952),
('Gulbarga', 'IND', 'Karnataka', 304099),
('New Delhi', 'IND', 'Delhi', 301297),
('Jhansi', 'IND', 'Uttar Pradesh', 300850),
('Gaya', 'IND', 'Bihar', 291675),
('Kakinada', 'IND', 'Andhra Pradesh', 279980),
('Dhule (Dhulia)', 'IND', 'Maharashtra', 278317),
('Panihati', 'IND', 'West Bengali', 275990),
('Nanded (Nander)', 'IND', 'Maharashtra', 275083),
('Mangalore', 'IND', 'Karnataka', 273304),
('Dehra Dun', 'IND', 'Uttaranchal', 270159),
('Kamarhati', 'IND', 'West Bengali', 266889),
('Davangere', 'IND', 'Karnataka', 266082),
('Asansol', 'IND', 'West Bengali', 262188),
('Bhagalpur', 'IND', 'Bihar', 253225),
('Bellary', 'IND', 'Karnataka', 245391),
('Barddhaman (Burdwan)', 'IND', 'West Bengali', 245079),
('Rampur', 'IND', 'Uttar Pradesh', 243742),
('Jalgaon', 'IND', 'Maharashtra', 242193),
('Muzaffarpur', 'IND', 'Bihar', 241107),
('Nizamabad', 'IND', 'Andhra Pradesh', 241034),
('Muzaffarnagar', 'IND', 'Uttar Pradesh', 240609),
('Patiala', 'IND', 'Punjab', 238368),
('Shahjahanpur', 'IND', 'Uttar Pradesh', 237713),
('Kurnool', 'IND', 'Andhra Pradesh', 236800),
('Tiruppur (Tirupper)', 'IND', 'Tamil Nadu', 235661),
('Rohtak', 'IND', 'Haryana', 233400),
('South Dum Dum', 'IND', 'West Bengali', 232811),
('Mathura', 'IND', 'Uttar Pradesh', 226691),
('Chandrapur', 'IND', 'Maharashtra', 226105),
('Barahanagar (Baranagar)', 'IND', 'West Bengali', 224821),
('Darbhanga', 'IND', 'Bihar', 218391),
('Siliguri (Shiliguri)', 'IND', 'West Bengali', 216950),
('Raurkela', 'IND', 'Orissa', 215489),
('Ambattur', 'IND', 'Tamil Nadu', 215424),
('Panipat', 'IND', 'Haryana', 215218),
('Firozabad', 'IND', 'Uttar Pradesh', 215128),
('Ichalkaranji', 'IND', 'Maharashtra', 214950),
('Jammu', 'IND', 'Jammu and Kashmir', 214737),
('Ramagundam', 'IND', 'Andhra Pradesh', 214384),
('Eluru', 'IND', 'Andhra Pradesh', 212866),
('Brahmapur', 'IND', 'Orissa', 210418),
('Alwar', 'IND', 'Rajasthan', 205086),
('Pondicherry', 'IND', 'Pondicherry', 203065),
('Thanjavur', 'IND', 'Tamil Nadu', 202013),
('Bihar Sharif', 'IND', 'Bihar', 201323),
('Tuticorin', 'IND', 'Tamil Nadu', 199854),
('Imphal', 'IND', 'Manipur', 198535),
('Latur', 'IND', 'Maharashtra', 197408),
('Sagar', 'IND', 'Madhya Pradesh', 195346),
('Farrukhabad-cum-Fatehgarh', 'IND', 'Uttar Pradesh', 194567),
('Sangli', 'IND', 'Maharashtra', 193197),
('Parbhani', 'IND', 'Maharashtra', 190255),
('Nagar Coil', 'IND', 'Tamil Nadu', 190084),
('Bijapur', 'IND', 'Karnataka', 186939),
('Kukatpalle', 'IND', 'Andhra Pradesh', 185378),
('Bally', 'IND', 'West Bengali', 184474),
('Bhilwara', 'IND', 'Rajasthan', 183965),
('Ratlam', 'IND', 'Madhya Pradesh', 183375),
('Avadi', 'IND', 'Tamil Nadu', 183215),
('Dindigul', 'IND', 'Tamil Nadu', 182477),
('Ahmadnagar', 'IND', 'Maharashtra', 181339),
('Bilaspur', 'IND', 'Chhatisgarh', 179833),
('Shimoga', 'IND', 'Karnataka', 179258),
('Kharagpur', 'IND', 'West Bengali', 177989),
('Mira Bhayandar', 'IND', 'Maharashtra', 175372),
('Vellore', 'IND', 'Tamil Nadu', 175061),
('Jalna', 'IND', 'Maharashtra', 174985),
('Burnpur', 'IND', 'West Bengali', 174933),
('Anantapur', 'IND', 'Andhra Pradesh', 174924),
('Allappuzha (Alleppey)', 'IND', 'Kerala', 174666),
('Tirupati', 'IND', 'Andhra Pradesh', 174369),
('Karnal', 'IND', 'Haryana', 173751),
('Burhanpur', 'IND', 'Madhya Pradesh', 172710),
('Hisar (Hissar)', 'IND', 'Haryana', 172677),
('Tiruvottiyur', 'IND', 'Tamil Nadu', 172562),
('Mirzapur-cum-Vindhyachal', 'IND', 'Uttar Pradesh', 169336),
('Secunderabad', 'IND', 'Andhra Pradesh', 167461),
('Nadiad', 'IND', 'Gujarat', 167051),
('Dewas', 'IND', 'Madhya Pradesh', 164364),
('Murwara (Katni)', 'IND', 'Madhya Pradesh', 163431),
('Ganganagar', 'IND', 'Rajasthan', 161482),
('Vizianagaram', 'IND', 'Andhra Pradesh', 160359),
('Erode', 'IND', 'Tamil Nadu', 159232),
('Machilipatnam (Masulipatam)', 'IND', 'Andhra Pradesh', 159110),
('Bhatinda (Bathinda)', 'IND', 'Punjab', 159042),
('Raichur', 'IND', 'Karnataka', 157551),
('Agartala', 'IND', 'Tripura', 157358),
('Arrah (Ara)', 'IND', 'Bihar', 157082),
('Satna', 'IND', 'Madhya Pradesh', 156630),
('Lalbahadur Nagar', 'IND', 'Andhra Pradesh', 155500),
('Aizawl', 'IND', 'Mizoram', 155240),
('Uluberia', 'IND', 'West Bengali', 155172),
('Katihar', 'IND', 'Bihar', 154367),
('Cuddalore', 'IND', 'Tamil Nadu', 153086),
('Hugli-Chinsurah', 'IND', 'West Bengali', 151806),
('Dhanbad', 'IND', 'Jharkhand', 151789),
('Raiganj', 'IND', 'West Bengali', 151045),
('Sambhal', 'IND', 'Uttar Pradesh', 150869),
('Durg', 'IND', 'Chhatisgarh', 150645),
('Munger (Monghyr)', 'IND', 'Bihar', 150112),
('Kanchipuram', 'IND', 'Tamil Nadu', 150100),
('North Dum Dum', 'IND', 'West Bengali', 149965),
('Karimnagar', 'IND', 'Andhra Pradesh', 148583),
('Bharatpur', 'IND', 'Rajasthan', 148519),
('Sikar', 'IND', 'Rajasthan', 148272),
('Hardwar (Haridwar)', 'IND', 'Uttaranchal', 147305),
('Dabgram', 'IND', 'West Bengali', 147217),
('Morena', 'IND', 'Madhya Pradesh', 147124),
('Noida', 'IND', 'Uttar Pradesh', 146514),
('Hapur', 'IND', 'Uttar Pradesh', 146262),
('Bhusawal', 'IND', 'Maharashtra', 145143),
('Khandwa', 'IND', 'Madhya Pradesh', 145133),
('Yamuna Nagar', 'IND', 'Haryana', 144346),
('Sonipat (Sonepat)', 'IND', 'Haryana', 143922),
('Tenali', 'IND', 'Andhra Pradesh', 143726),
('Raurkela Civil Township', 'IND', 'Orissa', 140408),
('Kollam (Quilon)', 'IND', 'Kerala', 139852),
('Kumbakonam', 'IND', 'Tamil Nadu', 139483),
('Ingraj Bazar (English Bazar)', 'IND', 'West Bengali', 139204),
('Timkur', 'IND', 'Karnataka', 138903),
('Amroha', 'IND', 'Uttar Pradesh', 137061),
('Serampore', 'IND', 'West Bengali', 137028),
('Chapra', 'IND', 'Bihar', 136877),
('Pali', 'IND', 'Rajasthan', 136842),
('Maunath Bhanjan', 'IND', 'Uttar Pradesh', 136697),
('Adoni', 'IND', 'Andhra Pradesh', 136182),
('Jaunpur', 'IND', 'Uttar Pradesh', 136062),
('Tirunelveli', 'IND', 'Tamil Nadu', 135825),
('Bahraich', 'IND', 'Uttar Pradesh', 135400),
('Gadag Betigeri', 'IND', 'Karnataka', 134051),
('Proddatur', 'IND', 'Andhra Pradesh', 133914),
('Chittoor', 'IND', 'Andhra Pradesh', 133462),
('Barrackpur', 'IND', 'West Bengali', 133265),
('Bharuch (Broach)', 'IND', 'Gujarat', 133102),
('Naihati', 'IND', 'West Bengali', 132701),
('Shillong', 'IND', 'Meghalaya', 131719),
('Sambalpur', 'IND', 'Orissa', 131138),
('Junagadh', 'IND', 'Gujarat', 130484),
('Rae Bareli', 'IND', 'Uttar Pradesh', 129904),
('Rewa', 'IND', 'Madhya Pradesh', 128981),
('Gurgaon', 'IND', 'Haryana', 128608),
('Khammam', 'IND', 'Andhra Pradesh', 127992),
('Bulandshahr', 'IND', 'Uttar Pradesh', 127201),
('Navsari', 'IND', 'Gujarat', 126089),
('Malkajgiri', 'IND', 'Andhra Pradesh', 126066),
('Midnapore (Medinipur)', 'IND', 'West Bengali', 125498),
('Miraj', 'IND', 'Maharashtra', 125407),
('Raj Nandgaon', 'IND', 'Chhatisgarh', 125371),
('Alandur', 'IND', 'Tamil Nadu', 125244),
('Puri', 'IND', 'Orissa', 125199),
('Navadwip', 'IND', 'West Bengali', 125037),
('Sirsa', 'IND', 'Haryana', 125000),
('Korba', 'IND', 'Chhatisgarh', 124501),
('Faizabad', 'IND', 'Uttar Pradesh', 124437),
('Etawah', 'IND', 'Uttar Pradesh', 124072),
('Pathankot', 'IND', 'Punjab', 123930),
('Gandhinagar', 'IND', 'Gujarat', 123359),
('Palghat (Palakkad)', 'IND', 'Kerala', 123289),
('Veraval', 'IND', 'Gujarat', 123000),
('Hoshiarpur', 'IND', 'Punjab', 122705),
('Ambala', 'IND', 'Haryana', 122596),
('Sitapur', 'IND', 'Uttar Pradesh', 121842),
('Bhiwani', 'IND', 'Haryana', 121629),
('Cuddapah', 'IND', 'Andhra Pradesh', 121463),
('Bhimavaram', 'IND', 'Andhra Pradesh', 121314),
('Krishnanagar', 'IND', 'West Bengali', 121110),
('Chandannagar', 'IND', 'West Bengali', 120378),
('Mandya', 'IND', 'Karnataka', 120265),
('Dibrugarh', 'IND', 'Assam', 120127),
('Nandyal', 'IND', 'Andhra Pradesh', 119813),
('Balurghat', 'IND', 'West Bengali', 119796),
('Neyveli', 'IND', 'Tamil Nadu', 118080),
('Fatehpur', 'IND', 'Uttar Pradesh', 117675),
('Mahbubnagar', 'IND', 'Andhra Pradesh', 116833),
('Budaun', 'IND', 'Uttar Pradesh', 116695),
('Porbandar', 'IND', 'Gujarat', 116671),
('Silchar', 'IND', 'Assam', 115483),
('Berhampore (Baharampur)', 'IND', 'West Bengali', 115144),
('Purnea (Purnia)', 'IND', 'Jharkhand', 114912),
('Bankura', 'IND', 'West Bengali', 114876),
('Rajapalaiyam', 'IND', 'Tamil Nadu', 114202),
('Titagarh', 'IND', 'West Bengali', 114085),
('Halisahar', 'IND', 'West Bengali', 114028),
('Hathras', 'IND', 'Uttar Pradesh', 113285),
('Bhir (Bid)', 'IND', 'Maharashtra', 112434),
('Pallavaram', 'IND', 'Tamil Nadu', 111866),
('Anand', 'IND', 'Gujarat', 110266),
('Mango', 'IND', 'Jharkhand', 110024),
('Santipur', 'IND', 'West Bengali', 109956),
('Bhind', 'IND', 'Madhya Pradesh', 109755),
('Gondiya', 'IND', 'Maharashtra', 109470),
('Tiruvannamalai', 'IND', 'Tamil Nadu', 109196),
('Yeotmal (Yavatmal)', 'IND', 'Maharashtra', 108578),
('Kulti-Barakar', 'IND', 'West Bengali', 108518),
('Moga', 'IND', 'Punjab', 108304),
('Shivapuri', 'IND', 'Madhya Pradesh', 108277),
('Bidar', 'IND', 'Karnataka', 108016),
('Guntakal', 'IND', 'Andhra Pradesh', 107592),
('Unnao', 'IND', 'Uttar Pradesh', 107425),
('Barasat', 'IND', 'West Bengali', 107365),
('Tambaram', 'IND', 'Tamil Nadu', 107187),
('Abohar', 'IND', 'Punjab', 107163),
('Pilibhit', 'IND', 'Uttar Pradesh', 106605),
('Valparai', 'IND', 'Tamil Nadu', 106523),
('Gonda', 'IND', 'Uttar Pradesh', 106078),
('Surendranagar', 'IND', 'Gujarat', 105973),
('Qutubullapur', 'IND', 'Andhra Pradesh', 105380),
('Beawar', 'IND', 'Rajasthan', 105363),
('Hindupur', 'IND', 'Andhra Pradesh', 104651),
('Gandhidham', 'IND', 'Gujarat', 104585),
('Haldwani-cum-Kathgodam', 'IND', 'Uttaranchal', 104195),
('Tellicherry (Thalassery)', 'IND', 'Kerala', 103579),
('Wardha', 'IND', 'Maharashtra', 102985),
('Rishra', 'IND', 'West Bengali', 102649),
('Bhuj', 'IND', 'Gujarat', 102176),
('Modinagar', 'IND', 'Uttar Pradesh', 101660),
('Gudivada', 'IND', 'Andhra Pradesh', 101656),
('Basirhat', 'IND', 'West Bengali', 101409),
('Uttarpara-Kotrung', 'IND', 'West Bengali', 100867),
('Ongole', 'IND', 'Andhra Pradesh', 100836),
('North Barrackpur', 'IND', 'West Bengali', 100513),
('Guna', 'IND', 'Madhya Pradesh', 100490),
('Haldia', 'IND', 'West Bengali', 100347),
('Habra', 'IND', 'West Bengali', 100223),
('Kanchrapara', 'IND', 'West Bengali', 100194),
('Tonk', 'IND', 'Rajasthan', 100079),
('Champdani', 'IND', 'West Bengali', 98818),
('Orai', 'IND', 'Uttar Pradesh', 98640),
('Pudukkottai', 'IND', 'Tamil Nadu', 98619),
('Sasaram', 'IND', 'Bihar', 98220),
('Hazaribag', 'IND', 'Jharkhand', 97712),
('Palayankottai', 'IND', 'Tamil Nadu', 97662),
('Banda', 'IND', 'Uttar Pradesh', 97227),
('Godhra', 'IND', 'Gujarat', 96813),
('Hospet', 'IND', 'Karnataka', 96322),
('Ashoknagar-Kalyangarh', 'IND', 'West Bengali', 96315),
('Achalpur', 'IND', 'Maharashtra', 96216),
('Patan', 'IND', 'Gujarat', 96109),
('Mandasor', 'IND', 'Madhya Pradesh', 95758),
('Damoh', 'IND', 'Madhya Pradesh', 95661),
('Satara', 'IND', 'Maharashtra', 95133),
('Meerut Cantonment', 'IND', 'Uttar Pradesh', 94876),
('Dehri', 'IND', 'Bihar', 94526),
('Delhi Cantonment', 'IND', 'Delhi', 94326),
('Chhindwara', 'IND', 'Madhya Pradesh', 93731),
('Bansberia', 'IND', 'West Bengali', 93447),
('Nagaon', 'IND', 'Assam', 93350),
('Kanpur Cantonment', 'IND', 'Uttar Pradesh', 93109),
('Vidisha', 'IND', 'Madhya Pradesh', 92917),
('Bettiah', 'IND', 'Bihar', 92583),
('Purulia', 'IND', 'Jharkhand', 92574),
('Hassan', 'IND', 'Karnataka', 90803),
('Ambala Sadar', 'IND', 'Haryana', 90712),
('Baidyabati', 'IND', 'West Bengali', 90601),
('Morvi', 'IND', 'Gujarat', 90357),
('Raigarh', 'IND', 'Chhatisgarh', 89166),
('Vejalpur', 'IND', 'Gujarat', 89053),
('Baghdad', 'IRQ', 'Baghdad', 4336000),
('Mosul', 'IRQ', 'Ninawa', 879000),
('Irbil', 'IRQ', 'Irbil', 485968),
('Kirkuk', 'IRQ', 'al-Tamim', 418624),
('Basra', 'IRQ', 'Basra', 406296),
('al-Sulaymaniya', 'IRQ', 'al-Sulaymaniya', 364096),
('al-Najaf', 'IRQ', 'al-Najaf', 309010),
('Karbala', 'IRQ', 'Karbala', 296705),
('al-Hilla', 'IRQ', 'Babil', 268834),
('al-Nasiriya', 'IRQ', 'DhiQar', 265937),
('al-Amara', 'IRQ', 'Maysan', 208797),
('al-Diwaniya', 'IRQ', 'al-Qadisiya', 196519),
('al-Ramadi', 'IRQ', 'al-Anbar', 192556),
('al-Kut', 'IRQ', 'Wasit', 183183),
('Baquba', 'IRQ', 'Diyala', 114516),
('Teheran', 'IRN', 'Teheran', 6758845),
('Mashhad', 'IRN', 'Khorasan', 1887405),
('Esfahan', 'IRN', 'Esfahan', 1266072),
('Tabriz', 'IRN', 'East Azerbaidzan', 1191043),
('Shiraz', 'IRN', 'Fars', 1053025),
('Karaj', 'IRN', 'Teheran', 940968),
('Ahvaz', 'IRN', 'Khuzestan', 804980),
('Qom', 'IRN', 'Qom', 777677),
('Kermanshah', 'IRN', 'Kermanshah', 692986),
('Urmia', 'IRN', 'West Azerbaidzan', 435200),
('Zahedan', 'IRN', 'Sistan va Baluchesta', 419518),
('Rasht', 'IRN', 'Gilan', 417748),
('Hamadan', 'IRN', 'Hamadan', 401281),
('Kerman', 'IRN', 'Kerman', 384991),
('Arak', 'IRN', 'Markazi', 380755),
('Ardebil', 'IRN', 'Ardebil', 340386),
('Yazd', 'IRN', 'Yazd', 326776),
('Qazvin', 'IRN', 'Qazvin', 291117),
('Zanjan', 'IRN', 'Zanjan', 286295),
('Sanandaj', 'IRN', 'Kordestan', 277808),
('Bandar-e-Abbas', 'IRN', 'Hormozgan', 273578),
('Khorramabad', 'IRN', 'Lorestan', 272815),
('Eslamshahr', 'IRN', 'Teheran', 265450),
('Borujerd', 'IRN', 'Lorestan', 217804),
('Abadan', 'IRN', 'Khuzestan', 206073),
('Dezful', 'IRN', 'Khuzestan', 202639),
('Kashan', 'IRN', 'Esfahan', 201372),
('Sari', 'IRN', 'Mazandaran', 195882),
('Gorgan', 'IRN', 'Golestan', 188710),
('Najafabad', 'IRN', 'Esfahan', 178498),
('Sabzevar', 'IRN', 'Khorasan', 170738),
('Khomeynishahr', 'IRN', 'Esfahan', 165888),
('Amol', 'IRN', 'Mazandaran', 159092),
('Neyshabur', 'IRN', 'Khorasan', 158847),
('Babol', 'IRN', 'Mazandaran', 158346),
('Khoy', 'IRN', 'West Azerbaidzan', 148944),
('Malayer', 'IRN', 'Hamadan', 144373),
('Bushehr', 'IRN', 'Bushehr', 143641),
('Qaemshahr', 'IRN', 'Mazandaran', 143286),
('Qarchak', 'IRN', 'Teheran', 142690),
('Qods', 'IRN', 'Teheran', 138278),
('Sirjan', 'IRN', 'Kerman', 135024),
('Bojnurd', 'IRN', 'Khorasan', 134835),
('Maragheh', 'IRN', 'East Azerbaidzan', 132318),
('Birjand', 'IRN', 'Khorasan', 127608),
('Ilam', 'IRN', 'Ilam', 126346),
('Bukan', 'IRN', 'West Azerbaidzan', 120020),
('Masjed-e-Soleyman', 'IRN', 'Khuzestan', 116883),
('Saqqez', 'IRN', 'Kordestan', 115394),
('Gonbad-e Qabus', 'IRN', 'Mazandaran', 111253),
('Saveh', 'IRN', 'Qom', 111245),
('Mahabad', 'IRN', 'West Azerbaidzan', 107799),
('Varamin', 'IRN', 'Teheran', 107233),
('Andimeshk', 'IRN', 'Khuzestan', 106923),
('Khorramshahr', 'IRN', 'Khuzestan', 105636),
('Shahrud', 'IRN', 'Semnan', 104765),
('Marv Dasht', 'IRN', 'Fars', 103579),
('Zabol', 'IRN', 'Sistan va Baluchesta', 100887),
('Shahr-e Kord', 'IRN', 'Chaharmahal va Bakht', 100477),
('Bandar-e Anzali', 'IRN', 'Gilan', 98500),
('Rafsanjan', 'IRN', 'Kerman', 98300),
('Marand', 'IRN', 'East Azerbaidzan', 96400),
('Torbat-e Heydariyeh', 'IRN', 'Khorasan', 94600),
('Jahrom', 'IRN', 'Fars', 94200),
('Semnan', 'IRN', 'Semnan', 91045),
('Miandoab', 'IRN', 'West Azerbaidzan', 90100),
('Qomsheh', 'IRN', 'Esfahan', 89800),
('Dublin', 'IRL', 'Leinster', 481854),
('Cork', 'IRL', 'Munster', 127187),
('Reykjavík', 'ISL', 'Höfuðborgarsvæði', 109184),
('Jerusalem', 'ISR', 'Jerusalem', 633700),
('Tel Aviv-Jaffa', 'ISR', 'Tel Aviv', 348100),
('Haifa', 'ISR', 'Haifa', 265700),
('Rishon Le Ziyyon', 'ISR', 'Ha Merkaz', 188200),
('Beerseba', 'ISR', 'Ha Darom', 163700),
('Holon', 'ISR', 'Tel Aviv', 163100),
('Petah Tiqwa', 'ISR', 'Ha Merkaz', 159400),
('Ashdod', 'ISR', 'Ha Darom', 155800),
('Netanya', 'ISR', 'Ha Merkaz', 154900),
('Bat Yam', 'ISR', 'Tel Aviv', 137000),
('Bene Beraq', 'ISR', 'Tel Aviv', 133900),
('Ramat Gan', 'ISR', 'Tel Aviv', 126900),
('Ashqelon', 'ISR', 'Ha Darom', 92300),
('Rehovot', 'ISR', 'Ha Merkaz', 90300),
('Roma', 'ITA', 'Latium', 2643581),
('Milano', 'ITA', 'Lombardia', 1300977),
('Napoli', 'ITA', 'Campania', 1002619),
('Torino', 'ITA', 'Piemonte', 903705),
('Palermo', 'ITA', 'Sisilia', 683794),
('Genova', 'ITA', 'Liguria', 636104),
('Bologna', 'ITA', 'Emilia-Romagna', 381161),
('Firenze', 'ITA', 'Toscana', 376662),
('Catania', 'ITA', 'Sisilia', 337862),
('Bari', 'ITA', 'Apulia', 331848),
('Venezia', 'ITA', 'Veneto', 277305),
('Messina', 'ITA', 'Sisilia', 259156),
('Verona', 'ITA', 'Veneto', 255268),
('Trieste', 'ITA', 'Friuli-Venezia Giuli', 216459),
('Padova', 'ITA', 'Veneto', 211391),
('Taranto', 'ITA', 'Apulia', 208214),
('Brescia', 'ITA', 'Lombardia', 191317),
('Reggio di Calabria', 'ITA', 'Calabria', 179617),
('Modena', 'ITA', 'Emilia-Romagna', 176022),
('Prato', 'ITA', 'Toscana', 172473),
('Parma', 'ITA', 'Emilia-Romagna', 168717),
('Cagliari', 'ITA', 'Sardinia', 165926),
('Livorno', 'ITA', 'Toscana', 161673),
('Perugia', 'ITA', 'Umbria', 156673),
('Foggia', 'ITA', 'Apulia', 154891),
('Reggio nell´ Emilia', 'ITA', 'Emilia-Romagna', 143664),
('Salerno', 'ITA', 'Campania', 142055),
('Ravenna', 'ITA', 'Emilia-Romagna', 138418),
('Ferrara', 'ITA', 'Emilia-Romagna', 132127),
('Rimini', 'ITA', 'Emilia-Romagna', 131062),
('Syrakusa', 'ITA', 'Sisilia', 126282),
('Sassari', 'ITA', 'Sardinia', 120803),
('Monza', 'ITA', 'Lombardia', 119516),
('Bergamo', 'ITA', 'Lombardia', 117837),
('Pescara', 'ITA', 'Abruzzit', 115698),
('Latina', 'ITA', 'Latium', 114099),
('Vicenza', 'ITA', 'Veneto', 109738),
('Terni', 'ITA', 'Umbria', 107770),
('Forlì', 'ITA', 'Emilia-Romagna', 107475),
('Trento', 'ITA', 'Trentino-Alto Adige', 104906),
('Novara', 'ITA', 'Piemonte', 102037),
('Piacenza', 'ITA', 'Emilia-Romagna', 98384),
('Ancona', 'ITA', 'Marche', 98329),
('Lecce', 'ITA', 'Apulia', 98208),
('Bolzano', 'ITA', 'Trentino-Alto Adige', 97232),
('Catanzaro', 'ITA', 'Calabria', 96700),
('La Spezia', 'ITA', 'Liguria', 95504),
('Udine', 'ITA', 'Friuli-Venezia Giuli', 94932),
('Torre del Greco', 'ITA', 'Campania', 94505),
('Andria', 'ITA', 'Apulia', 94443),
('Brindisi', 'ITA', 'Apulia', 93454),
('Giugliano in Campania', 'ITA', 'Campania', 93286),
('Pisa', 'ITA', 'Toscana', 92379),
('Barletta', 'ITA', 'Apulia', 91904),
('Arezzo', 'ITA', 'Toscana', 91729),
('Alessandria', 'ITA', 'Piemonte', 90289),
('Cesena', 'ITA', 'Emilia-Romagna', 89852),
('Pesaro', 'ITA', 'Marche', 88987),
('Dili', 'TMP', 'Dili', 47900),
('Wien', 'AUT', 'Wien', 1608144),
('Graz', 'AUT', 'Steiermark', 240967),
('Linz', 'AUT', 'North Austria', 188022),
('Salzburg', 'AUT', 'Salzburg', 144247),
('Innsbruck', 'AUT', 'Tiroli', 111752),
('Klagenfurt', 'AUT', 'Kärnten', 91141),
('Spanish Town', 'JAM', 'St. Catherine', 110379),
('Kingston', 'JAM', 'St. Andrew', 103962),
('Portmore', 'JAM', 'St. Andrew', 99799),
('Tokyo', 'JPN', 'Tokyo-to', 7980230),
('Jokohama [Yokohama]', 'JPN', 'Kanagawa', 3339594),
('Osaka', 'JPN', 'Osaka', 2595674),
('Nagoya', 'JPN', 'Aichi', 2154376),
('Sapporo', 'JPN', 'Hokkaido', 1790886),
('Kioto', 'JPN', 'Kyoto', 1461974),
('Kobe', 'JPN', 'Hyogo', 1425139),
('Fukuoka', 'JPN', 'Fukuoka', 1308379),
('Kawasaki', 'JPN', 'Kanagawa', 1217359),
('Hiroshima', 'JPN', 'Hiroshima', 1119117),
('Kitakyushu', 'JPN', 'Fukuoka', 1016264),
('Sendai', 'JPN', 'Miyagi', 989975),
('Chiba', 'JPN', 'Chiba', 863930),
('Sakai', 'JPN', 'Osaka', 797735),
('Kumamoto', 'JPN', 'Kumamoto', 656734),
('Okayama', 'JPN', 'Okayama', 624269),
('Sagamihara', 'JPN', 'Kanagawa', 586300),
('Hamamatsu', 'JPN', 'Shizuoka', 568796),
('Kagoshima', 'JPN', 'Kagoshima', 549977),
('Funabashi', 'JPN', 'Chiba', 545299),
('Higashiosaka', 'JPN', 'Osaka', 517785),
('Hachioji', 'JPN', 'Tokyo-to', 513451),
('Niigata', 'JPN', 'Niigata', 497464),
('Amagasaki', 'JPN', 'Hyogo', 481434),
('Himeji', 'JPN', 'Hyogo', 475167),
('Shizuoka', 'JPN', 'Shizuoka', 473854),
('Urawa', 'JPN', 'Saitama', 469675),
('Matsuyama', 'JPN', 'Ehime', 466133),
('Matsudo', 'JPN', 'Chiba', 461126),
('Kanazawa', 'JPN', 'Ishikawa', 455386),
('Kawaguchi', 'JPN', 'Saitama', 452155),
('Ichikawa', 'JPN', 'Chiba', 441893),
('Omiya', 'JPN', 'Saitama', 441649),
('Utsunomiya', 'JPN', 'Tochigi', 440353),
('Oita', 'JPN', 'Oita', 433401),
('Nagasaki', 'JPN', 'Nagasaki', 432759),
('Yokosuka', 'JPN', 'Kanagawa', 430200),
('Kurashiki', 'JPN', 'Okayama', 425103),
('Gifu', 'JPN', 'Gifu', 408007),
('Hirakata', 'JPN', 'Osaka', 403151),
('Nishinomiya', 'JPN', 'Hyogo', 397618),
('Toyonaka', 'JPN', 'Osaka', 396689),
('Wakayama', 'JPN', 'Wakayama', 391233),
('Fukuyama', 'JPN', 'Hiroshima', 376921),
('Fujisawa', 'JPN', 'Kanagawa', 372840),
('Asahikawa', 'JPN', 'Hokkaido', 364813),
('Machida', 'JPN', 'Tokyo-to', 364197),
('Nara', 'JPN', 'Nara', 362812),
('Takatsuki', 'JPN', 'Osaka', 361747),
('Iwaki', 'JPN', 'Fukushima', 361737),
('Nagano', 'JPN', 'Nagano', 361391),
('Toyohashi', 'JPN', 'Aichi', 360066),
('Toyota', 'JPN', 'Aichi', 346090),
('Suita', 'JPN', 'Osaka', 345750),
('Takamatsu', 'JPN', 'Kagawa', 332471),
('Koriyama', 'JPN', 'Fukushima', 330335),
('Okazaki', 'JPN', 'Aichi', 328711),
('Kawagoe', 'JPN', 'Saitama', 327211),
('Tokorozawa', 'JPN', 'Saitama', 325809),
('Toyama', 'JPN', 'Toyama', 325790),
('Kochi', 'JPN', 'Kochi', 324710),
('Kashiwa', 'JPN', 'Chiba', 320296),
('Akita', 'JPN', 'Akita', 314440),
('Miyazaki', 'JPN', 'Miyazaki', 303784),
('Koshigaya', 'JPN', 'Saitama', 301446),
('Naha', 'JPN', 'Okinawa', 299851),
('Aomori', 'JPN', 'Aomori', 295969),
('Hakodate', 'JPN', 'Hokkaido', 294788),
('Akashi', 'JPN', 'Hyogo', 292253),
('Yokkaichi', 'JPN', 'Mie', 288173),
('Fukushima', 'JPN', 'Fukushima', 287525),
('Morioka', 'JPN', 'Iwate', 287353),
('Maebashi', 'JPN', 'Gumma', 284473),
('Kasugai', 'JPN', 'Aichi', 282348),
('Otsu', 'JPN', 'Shiga', 282070),
('Ichihara', 'JPN', 'Chiba', 279280),
('Yao', 'JPN', 'Osaka', 276421),
('Ichinomiya', 'JPN', 'Aichi', 270828),
('Tokushima', 'JPN', 'Tokushima', 269649),
('Kakogawa', 'JPN', 'Hyogo', 266281),
('Ibaraki', 'JPN', 'Osaka', 261020),
('Neyagawa', 'JPN', 'Osaka', 257315),
('Shimonoseki', 'JPN', 'Yamaguchi', 257263),
('Yamagata', 'JPN', 'Yamagata', 255617),
('Fukui', 'JPN', 'Fukui', 254818),
('Hiratsuka', 'JPN', 'Kanagawa', 254207),
('Mito', 'JPN', 'Ibaragi', 246559),
('Sasebo', 'JPN', 'Nagasaki', 244240),
('Hachinohe', 'JPN', 'Aomori', 242979),
('Takasaki', 'JPN', 'Gumma', 239124),
('Shimizu', 'JPN', 'Shizuoka', 239123),
('Kurume', 'JPN', 'Fukuoka', 235611),
('Fuji', 'JPN', 'Shizuoka', 231527),
('Soka', 'JPN', 'Saitama', 222768),
('Fuchu', 'JPN', 'Tokyo-to', 220576),
('Chigasaki', 'JPN', 'Kanagawa', 216015),
('Atsugi', 'JPN', 'Kanagawa', 212407),
('Numazu', 'JPN', 'Shizuoka', 211382),
('Ageo', 'JPN', 'Saitama', 209442),
('Yamato', 'JPN', 'Kanagawa', 208234),
('Matsumoto', 'JPN', 'Nagano', 206801),
('Kure', 'JPN', 'Hiroshima', 206504),
('Takarazuka', 'JPN', 'Hyogo', 205993),
('Kasukabe', 'JPN', 'Saitama', 201838),
('Chofu', 'JPN', 'Tokyo-to', 201585),
('Odawara', 'JPN', 'Kanagawa', 200171),
('Kofu', 'JPN', 'Yamanashi', 199753),
('Kushiro', 'JPN', 'Hokkaido', 197608),
('Kishiwada', 'JPN', 'Osaka', 197276),
('Hitachi', 'JPN', 'Ibaragi', 196622),
('Nagaoka', 'JPN', 'Niigata', 192407),
('Itami', 'JPN', 'Hyogo', 190886),
('Uji', 'JPN', 'Kyoto', 188735),
('Suzuka', 'JPN', 'Mie', 184061),
('Hirosaki', 'JPN', 'Aomori', 177522),
('Ube', 'JPN', 'Yamaguchi', 175206),
('Kodaira', 'JPN', 'Tokyo-to', 174984),
('Takaoka', 'JPN', 'Toyama', 174380),
('Obihiro', 'JPN', 'Hokkaido', 173685),
('Tomakomai', 'JPN', 'Hokkaido', 171958),
('Saga', 'JPN', 'Saga', 170034),
('Sakura', 'JPN', 'Chiba', 168072),
('Kamakura', 'JPN', 'Kanagawa', 167661),
('Mitaka', 'JPN', 'Tokyo-to', 167268),
('Izumi', 'JPN', 'Osaka', 166979),
('Hino', 'JPN', 'Tokyo-to', 166770),
('Hadano', 'JPN', 'Kanagawa', 166512),
('Ashikaga', 'JPN', 'Tochigi', 165243),
('Tsu', 'JPN', 'Mie', 164543),
('Sayama', 'JPN', 'Saitama', 162472),
('Yachiyo', 'JPN', 'Chiba', 161222),
('Tsukuba', 'JPN', 'Ibaragi', 160768),
('Tachikawa', 'JPN', 'Tokyo-to', 159430),
('Kumagaya', 'JPN', 'Saitama', 157171),
('Moriguchi', 'JPN', 'Osaka', 155941),
('Otaru', 'JPN', 'Hokkaido', 155784),
('Anjo', 'JPN', 'Aichi', 153823),
('Narashino', 'JPN', 'Chiba', 152849),
('Oyama', 'JPN', 'Tochigi', 152820),
('Ogaki', 'JPN', 'Gifu', 151758),
('Matsue', 'JPN', 'Shimane', 149821),
('Kawanishi', 'JPN', 'Hyogo', 149794),
('Hitachinaka', 'JPN', 'Tokyo-to', 148006),
('Niiza', 'JPN', 'Saitama', 147744),
('Nagareyama', 'JPN', 'Chiba', 147738),
('Tottori', 'JPN', 'Tottori', 147523),
('Tama', 'JPN', 'Ibaragi', 146712),
('Iruma', 'JPN', 'Saitama', 145922),
('Ota', 'JPN', 'Gumma', 145317),
('Omuta', 'JPN', 'Fukuoka', 142889),
('Komaki', 'JPN', 'Aichi', 139827),
('Ome', 'JPN', 'Tokyo-to', 139216),
('Kadoma', 'JPN', 'Osaka', 138953),
('Yamaguchi', 'JPN', 'Yamaguchi', 138210),
('Higashimurayama', 'JPN', 'Tokyo-to', 136970),
('Yonago', 'JPN', 'Tottori', 136461),
('Matsubara', 'JPN', 'Osaka', 135010),
('Musashino', 'JPN', 'Tokyo-to', 134426),
('Tsuchiura', 'JPN', 'Ibaragi', 134072),
('Joetsu', 'JPN', 'Niigata', 133505),
('Miyakonojo', 'JPN', 'Miyazaki', 133183),
('Misato', 'JPN', 'Saitama', 132957),
('Kakamigahara', 'JPN', 'Gifu', 131831),
('Daito', 'JPN', 'Osaka', 130594),
('Seto', 'JPN', 'Aichi', 130470),
('Kariya', 'JPN', 'Aichi', 127969),
('Urayasu', 'JPN', 'Chiba', 127550),
('Beppu', 'JPN', 'Oita', 127486),
('Niihama', 'JPN', 'Ehime', 127207),
('Minoo', 'JPN', 'Osaka', 127026),
('Fujieda', 'JPN', 'Shizuoka', 126897),
('Abiko', 'JPN', 'Chiba', 126670),
('Nobeoka', 'JPN', 'Miyazaki', 125547),
('Tondabayashi', 'JPN', 'Osaka', 125094),
('Ueda', 'JPN', 'Nagano', 124217),
('Kashihara', 'JPN', 'Nara', 124013),
('Matsusaka', 'JPN', 'Mie', 123582),
('Isesaki', 'JPN', 'Gumma', 123285),
('Zama', 'JPN', 'Kanagawa', 122046),
('Kisarazu', 'JPN', 'Chiba', 121967),
('Noda', 'JPN', 'Chiba', 121030),
('Ishinomaki', 'JPN', 'Miyagi', 120963),
('Fujinomiya', 'JPN', 'Shizuoka', 119714),
('Kawachinagano', 'JPN', 'Osaka', 119666),
('Imabari', 'JPN', 'Ehime', 119357),
('Aizuwakamatsu', 'JPN', 'Fukushima', 119287),
('Higashihiroshima', 'JPN', 'Hiroshima', 119166),
('Habikino', 'JPN', 'Osaka', 118968),
('Ebetsu', 'JPN', 'Hokkaido', 118805),
('Hofu', 'JPN', 'Yamaguchi', 118751),
('Kiryu', 'JPN', 'Gumma', 118326),
('Okinawa', 'JPN', 'Okinawa', 117748),
('Yaizu', 'JPN', 'Shizuoka', 117258),
('Toyokawa', 'JPN', 'Aichi', 115781),
('Ebina', 'JPN', 'Kanagawa', 115571),
('Asaka', 'JPN', 'Saitama', 114815),
('Higashikurume', 'JPN', 'Tokyo-to', 111666),
('Ikoma', 'JPN', 'Nara', 111645),
('Kitami', 'JPN', 'Hokkaido', 111295),
('Koganei', 'JPN', 'Tokyo-to', 110969),
('Iwatsuki', 'JPN', 'Saitama', 110034),
('Mishima', 'JPN', 'Shizuoka', 109699),
('Handa', 'JPN', 'Aichi', 108600),
('Muroran', 'JPN', 'Hokkaido', 108275),
('Komatsu', 'JPN', 'Ishikawa', 107937),
('Yatsushiro', 'JPN', 'Kumamoto', 107661),
('Iida', 'JPN', 'Nagano', 107583),
('Tokuyama', 'JPN', 'Yamaguchi', 107078),
('Kokubunji', 'JPN', 'Tokyo-to', 106996),
('Akishima', 'JPN', 'Tokyo-to', 106914),
('Iwakuni', 'JPN', 'Yamaguchi', 106647),
('Kusatsu', 'JPN', 'Shiga', 106232),
('Kuwana', 'JPN', 'Mie', 106121),
('Sanda', 'JPN', 'Hyogo', 105643),
('Hikone', 'JPN', 'Shiga', 105508),
('Toda', 'JPN', 'Saitama', 103969),
('Tajimi', 'JPN', 'Gifu', 103171),
('Ikeda', 'JPN', 'Osaka', 102710),
('Fukaya', 'JPN', 'Saitama', 102156),
('Ise', 'JPN', 'Mie', 101732),
('Sakata', 'JPN', 'Yamagata', 101651),
('Kasuga', 'JPN', 'Fukuoka', 101344),
('Kamagaya', 'JPN', 'Chiba', 100821),
('Tsuruoka', 'JPN', 'Yamagata', 100713),
('Hoya', 'JPN', 'Tokyo-to', 100313),
('Nishio', 'JPN', 'Chiba', 100032),
('Tokai', 'JPN', 'Aichi', 99738),
('Inazawa', 'JPN', 'Aichi', 98746),
('Sakado', 'JPN', 'Saitama', 98221),
('Isehara', 'JPN', 'Kanagawa', 98123),
('Takasago', 'JPN', 'Hyogo', 97632),
('Fujimi', 'JPN', 'Saitama', 96972),
('Urasoe', 'JPN', 'Okinawa', 96002),
('Yonezawa', 'JPN', 'Yamagata', 95592),
('Konan', 'JPN', 'Aichi', 95521),
('Yamatokoriyama', 'JPN', 'Nara', 95165),
('Maizuru', 'JPN', 'Kyoto', 94784),
('Onomichi', 'JPN', 'Hiroshima', 93756),
('Higashimatsuyama', 'JPN', 'Saitama', 93342),
('Kimitsu', 'JPN', 'Chiba', 93216),
('Isahaya', 'JPN', 'Nagasaki', 93058),
('Kanuma', 'JPN', 'Tochigi', 93053),
('Izumisano', 'JPN', 'Osaka', 92583),
('Kameoka', 'JPN', 'Kyoto', 92398),
('Mobara', 'JPN', 'Chiba', 91664),
('Narita', 'JPN', 'Chiba', 91470),
('Kashiwazaki', 'JPN', 'Niigata', 91229),
('Tsuyama', 'JPN', 'Okayama', 91170),
('Sanaa', 'YEM', 'Sanaa', 503600),
('Aden', 'YEM', 'Aden', 398300),
('Taizz', 'YEM', 'Taizz', 317600),
('Hodeida', 'YEM', 'Hodeida', 298500),
('al-Mukalla', 'YEM', 'Hadramawt', 122400),
('Ibb', 'YEM', 'Ibb', 103300),
('Amman', 'JOR', 'Amman', 1000000),
('al-Zarqa', 'JOR', 'al-Zarqa', 389815),
('Irbid', 'JOR', 'Irbid', 231511),
('al-Rusayfa', 'JOR', 'al-Zarqa', 137247),
('Wadi al-Sir', 'JOR', 'Amman', 89104),
('Flying Fish Cove', 'CXR', '', 700),
('Beograd', 'YUG', 'Central Serbia', 1204000),
('Novi Sad', 'YUG', 'Vojvodina', 179626),
('Ni', 'YUG', 'Central Serbia', 175391),
('Pritina', 'YUG', 'Kosovo and Metohija', 155496),
('Kragujevac', 'YUG', 'Central Serbia', 147305),
('Podgorica', 'YUG', 'Montenegro', 135000),
('Subotica', 'YUG', 'Vojvodina', 100386),
('Prizren', 'YUG', 'Kosovo and Metohija', 92303),
('Phnom Penh', 'KHM', 'Phnom Penh', 570155),
('Battambang', 'KHM', 'Battambang', 129800),
('Siem Reap', 'KHM', 'Siem Reap', 105100),
('Douala', 'CMR', 'Littoral', 1448300),
('Yaoundé', 'CMR', 'Centre', 1372800),
('Garoua', 'CMR', 'Nord', 177000),
('Maroua', 'CMR', 'Extrême-Nord', 143000),
('Bamenda', 'CMR', 'Nord-Ouest', 138000),
('Bafoussam', 'CMR', 'Ouest', 131000),
('Nkongsamba', 'CMR', 'Littoral', 112454),
('Montréal', 'CAN', 'Québec', 1016376),
('Calgary', 'CAN', 'Alberta', 768082),
('Toronto', 'CAN', 'Ontario', 688275),
('North York', 'CAN', 'Ontario', 622632),
('Winnipeg', 'CAN', 'Manitoba', 618477),
('Edmonton', 'CAN', 'Alberta', 616306),
('Mississauga', 'CAN', 'Ontario', 608072),
('Scarborough', 'CAN', 'Ontario', 594501),
('Vancouver', 'CAN', 'British Colombia', 514008),
('Etobicoke', 'CAN', 'Ontario', 348845),
('London', 'CAN', 'Ontario', 339917),
('Hamilton', 'CAN', 'Ontario', 335614),
('Ottawa', 'CAN', 'Ontario', 335277),
('Laval', 'CAN', 'Québec', 330393),
('Surrey', 'CAN', 'British Colombia', 304477),
('Brampton', 'CAN', 'Ontario', 296711),
('Windsor', 'CAN', 'Ontario', 207588),
('Saskatoon', 'CAN', 'Saskatchewan', 193647),
('Kitchener', 'CAN', 'Ontario', 189959),
('Markham', 'CAN', 'Ontario', 189098),
('Regina', 'CAN', 'Saskatchewan', 180400),
('Burnaby', 'CAN', 'British Colombia', 179209),
('Québec', 'CAN', 'Québec', 167264),
('York', 'CAN', 'Ontario', 154980),
('Richmond', 'CAN', 'British Colombia', 148867),
('Vaughan', 'CAN', 'Ontario', 147889),
('Burlington', 'CAN', 'Ontario', 145150),
('Oshawa', 'CAN', 'Ontario', 140173),
('Oakville', 'CAN', 'Ontario', 139192),
('Saint Catharines', 'CAN', 'Ontario', 136216),
('Longueuil', 'CAN', 'Québec', 127977),
('Richmond Hill', 'CAN', 'Ontario', 116428),
('Thunder Bay', 'CAN', 'Ontario', 115913),
('Nepean', 'CAN', 'Ontario', 115100),
('Cape Breton', 'CAN', 'Nova Scotia', 114733),
('East York', 'CAN', 'Ontario', 114034),
('Halifax', 'CAN', 'Nova Scotia', 113910),
('Cambridge', 'CAN', 'Ontario', 109186),
('Gloucester', 'CAN', 'Ontario', 107314),
('Abbotsford', 'CAN', 'British Colombia', 105403),
('Guelph', 'CAN', 'Ontario', 103593),
('Saint John´s', 'CAN', 'Newfoundland', 101936),
('Coquitlam', 'CAN', 'British Colombia', 101820),
('Saanich', 'CAN', 'British Colombia', 101388),
('Gatineau', 'CAN', 'Québec', 100702),
('Delta', 'CAN', 'British Colombia', 95411),
('Sudbury', 'CAN', 'Ontario', 92686),
('Kelowna', 'CAN', 'British Colombia', 89442),
('Barrie', 'CAN', 'Ontario', 89269),
('Praia', 'CPV', 'São Tiago', 94800),
('Almaty', 'KAZ', 'Almaty Qalasy', 1129400),
('Qaraghandy', 'KAZ', 'Qaraghandy', 436900),
('Shymkent', 'KAZ', 'South Kazakstan', 360100),
('Taraz', 'KAZ', 'Taraz', 330100),
('Astana', 'KAZ', 'Astana', 311200),
('Öskemen', 'KAZ', 'East Kazakstan', 311000),
('Pavlodar', 'KAZ', 'Pavlodar', 300500),
('Semey', 'KAZ', 'East Kazakstan', 269600),
('Aqtöbe', 'KAZ', 'Aqtöbe', 253100),
('Qostanay', 'KAZ', 'Qostanay', 221400),
('Petropavl', 'KAZ', 'North Kazakstan', 203500),
('Oral', 'KAZ', 'West Kazakstan', 195500),
('Temirtau', 'KAZ', 'Qaraghandy', 170500),
('Qyzylorda', 'KAZ', 'Qyzylorda', 157400),
('Aqtau', 'KAZ', 'Mangghystau', 143400),
('Atyrau', 'KAZ', 'Atyrau', 142500),
('Ekibastuz', 'KAZ', 'Pavlodar', 127200),
('Kökshetau', 'KAZ', 'North Kazakstan', 123400),
('Rudnyy', 'KAZ', 'Qostanay', 109500),
('Taldyqorghan', 'KAZ', 'Almaty', 98000),
('Zhezqazghan', 'KAZ', 'Qaraghandy', 90000),
('Nairobi', 'KEN', 'Nairobi', 2290000),
('Mombasa', 'KEN', 'Coast', 461753),
('Kisumu', 'KEN', 'Nyanza', 192733),
('Nakuru', 'KEN', 'Rift Valley', 163927),
('Machakos', 'KEN', 'Eastern', 116293),
('Eldoret', 'KEN', 'Rift Valley', 111882),
('Meru', 'KEN', 'Eastern', 94947),
('Nyeri', 'KEN', 'Central', 91258),
('Bangui', 'CAF', 'Bangui', 524000),
('Shanghai', 'CHN', 'Shanghai', 9696300),
('Peking', 'CHN', 'Peking', 7472000),
('Chongqing', 'CHN', 'Chongqing', 6351600),
('Tianjin', 'CHN', 'Tianjin', 5286800),
('Wuhan', 'CHN', 'Hubei', 4344600),
('Harbin', 'CHN', 'Heilongjiang', 4289800),
('Shenyang', 'CHN', 'Liaoning', 4265200),
('Kanton [Guangzhou]', 'CHN', 'Guangdong', 4256300),
('Chengdu', 'CHN', 'Sichuan', 3361500),
('Nanking [Nanjing]', 'CHN', 'Jiangsu', 2870300),
('Changchun', 'CHN', 'Jilin', 2812000),
('Xi´an', 'CHN', 'Shaanxi', 2761400),
('Dalian', 'CHN', 'Liaoning', 2697000),
('Qingdao', 'CHN', 'Shandong', 2596000),
('Jinan', 'CHN', 'Shandong', 2278100),
('Hangzhou', 'CHN', 'Zhejiang', 2190500),
('Zhengzhou', 'CHN', 'Henan', 2107200),
('Shijiazhuang', 'CHN', 'Hebei', 2041500),
('Taiyuan', 'CHN', 'Shanxi', 1968400),
('Kunming', 'CHN', 'Yunnan', 1829500),
('Changsha', 'CHN', 'Hunan', 1809800),
('Nanchang', 'CHN', 'Jiangxi', 1691600),
('Fuzhou', 'CHN', 'Fujian', 1593800),
('Lanzhou', 'CHN', 'Gansu', 1565800),
('Guiyang', 'CHN', 'Guizhou', 1465200),
('Ningbo', 'CHN', 'Zhejiang', 1371200),
('Hefei', 'CHN', 'Anhui', 1369100),
('Urumti [Ürümqi]', 'CHN', 'Xinxiang', 1310100),
('Anshan', 'CHN', 'Liaoning', 1200000),
('Fushun', 'CHN', 'Liaoning', 1200000),
('Nanning', 'CHN', 'Guangxi', 1161800),
('Zibo', 'CHN', 'Shandong', 1140000),
('Qiqihar', 'CHN', 'Heilongjiang', 1070000),
('Jilin', 'CHN', 'Jilin', 1040000),
('Tangshan', 'CHN', 'Hebei', 1040000),
('Baotou', 'CHN', 'Inner Mongolia', 980000),
('Shenzhen', 'CHN', 'Guangdong', 950500),
('Hohhot', 'CHN', 'Inner Mongolia', 916700),
('Handan', 'CHN', 'Hebei', 840000),
('Wuxi', 'CHN', 'Jiangsu', 830000),
('Xuzhou', 'CHN', 'Jiangsu', 810000),
('Datong', 'CHN', 'Shanxi', 800000),
('Yichun', 'CHN', 'Heilongjiang', 800000),
('Benxi', 'CHN', 'Liaoning', 770000),
('Luoyang', 'CHN', 'Henan', 760000),
('Suzhou', 'CHN', 'Jiangsu', 710000),
('Xining', 'CHN', 'Qinghai', 700200),
('Huainan', 'CHN', 'Anhui', 700000),
('Jixi', 'CHN', 'Heilongjiang', 683885),
('Daqing', 'CHN', 'Heilongjiang', 660000),
('Fuxin', 'CHN', 'Liaoning', 640000),
('Amoy [Xiamen]', 'CHN', 'Fujian', 627500),
('Liuzhou', 'CHN', 'Guangxi', 610000),
('Shantou', 'CHN', 'Guangdong', 580000),
('Jinzhou', 'CHN', 'Liaoning', 570000),
('Mudanjiang', 'CHN', 'Heilongjiang', 570000),
('Yinchuan', 'CHN', 'Ningxia', 544500),
('Changzhou', 'CHN', 'Jiangsu', 530000),
('Zhangjiakou', 'CHN', 'Hebei', 530000),
('Dandong', 'CHN', 'Liaoning', 520000),
('Hegang', 'CHN', 'Heilongjiang', 520000),
('Kaifeng', 'CHN', 'Henan', 510000),
('Jiamusi', 'CHN', 'Heilongjiang', 493409),
('Liaoyang', 'CHN', 'Liaoning', 492559),
('Hengyang', 'CHN', 'Hunan', 487148),
('Baoding', 'CHN', 'Hebei', 483155),
('Hunjiang', 'CHN', 'Jilin', 482043),
('Xinxiang', 'CHN', 'Henan', 473762),
('Huangshi', 'CHN', 'Hubei', 457601),
('Haikou', 'CHN', 'Hainan', 454300),
('Yantai', 'CHN', 'Shandong', 452127),
('Bengbu', 'CHN', 'Anhui', 449245),
('Xiangtan', 'CHN', 'Hunan', 441968),
('Weifang', 'CHN', 'Shandong', 428522),
('Wuhu', 'CHN', 'Anhui', 425740),
('Pingxiang', 'CHN', 'Jiangxi', 425579),
('Yingkou', 'CHN', 'Liaoning', 421589),
('Anyang', 'CHN', 'Henan', 420332),
('Panzhihua', 'CHN', 'Sichuan', 415466),
('Pingdingshan', 'CHN', 'Henan', 410775),
('Xiangfan', 'CHN', 'Hubei', 410407),
('Zhuzhou', 'CHN', 'Hunan', 409924),
('Jiaozuo', 'CHN', 'Henan', 409100),
('Wenzhou', 'CHN', 'Zhejiang', 401871),
('Zhangjiang', 'CHN', 'Guangdong', 400997),
('Zigong', 'CHN', 'Sichuan', 393184),
('Shuangyashan', 'CHN', 'Heilongjiang', 386081),
('Zaozhuang', 'CHN', 'Shandong', 380846),
('Yakeshi', 'CHN', 'Inner Mongolia', 377869),
('Yichang', 'CHN', 'Hubei', 371601),
('Zhenjiang', 'CHN', 'Jiangsu', 368316),
('Huaibei', 'CHN', 'Anhui', 366549),
('Qinhuangdao', 'CHN', 'Hebei', 364972),
('Guilin', 'CHN', 'Guangxi', 364130),
('Liupanshui', 'CHN', 'Guizhou', 363954),
('Panjin', 'CHN', 'Liaoning', 362773),
('Yangquan', 'CHN', 'Shanxi', 362268),
('Jinxi', 'CHN', 'Liaoning', 357052),
('Liaoyuan', 'CHN', 'Jilin', 354141),
('Lianyungang', 'CHN', 'Jiangsu', 354139),
('Xianyang', 'CHN', 'Shaanxi', 352125),
('Tai´an', 'CHN', 'Shandong', 350696),
('Chifeng', 'CHN', 'Inner Mongolia', 350077),
('Shaoguan', 'CHN', 'Guangdong', 350043),
('Nantong', 'CHN', 'Jiangsu', 343341),
('Leshan', 'CHN', 'Sichuan', 341128),
('Baoji', 'CHN', 'Shaanxi', 337765),
('Linyi', 'CHN', 'Shandong', 324720),
('Tonghua', 'CHN', 'Jilin', 324600),
('Siping', 'CHN', 'Jilin', 317223),
('Changzhi', 'CHN', 'Shanxi', 317144),
('Tengzhou', 'CHN', 'Shandong', 315083),
('Chaozhou', 'CHN', 'Guangdong', 313469),
('Yangzhou', 'CHN', 'Jiangsu', 312892),
('Dongwan', 'CHN', 'Guangdong', 308669),
('Ma´anshan', 'CHN', 'Anhui', 305421),
('Foshan', 'CHN', 'Guangdong', 303160),
('Yueyang', 'CHN', 'Hunan', 302800),
('Xingtai', 'CHN', 'Hebei', 302789),
('Changde', 'CHN', 'Hunan', 301276),
('Shihezi', 'CHN', 'Xinxiang', 299676),
('Yancheng', 'CHN', 'Jiangsu', 296831),
('Jiujiang', 'CHN', 'Jiangxi', 291187),
('Dongying', 'CHN', 'Shandong', 281728),
('Shashi', 'CHN', 'Hubei', 281352),
('Xintai', 'CHN', 'Shandong', 281248),
('Jingdezhen', 'CHN', 'Jiangxi', 281183),
('Tongchuan', 'CHN', 'Shaanxi', 280657),
('Zhongshan', 'CHN', 'Guangdong', 278829),
('Shiyan', 'CHN', 'Hubei', 273786),
('Tieli', 'CHN', 'Heilongjiang', 265683),
('Jining', 'CHN', 'Shandong', 265248),
('Wuhai', 'CHN', 'Inner Mongolia', 264081),
('Mianyang', 'CHN', 'Sichuan', 262947),
('Luzhou', 'CHN', 'Sichuan', 262892),
('Zunyi', 'CHN', 'Guizhou', 261862),
('Shizuishan', 'CHN', 'Ningxia', 257862),
('Neijiang', 'CHN', 'Sichuan', 256012),
('Tongliao', 'CHN', 'Inner Mongolia', 255129),
('Tieling', 'CHN', 'Liaoning', 254842),
('Wafangdian', 'CHN', 'Liaoning', 251733),
('Anqing', 'CHN', 'Anhui', 250718),
('Shaoyang', 'CHN', 'Hunan', 247227),
('Laiwu', 'CHN', 'Shandong', 246833),
('Chengde', 'CHN', 'Hebei', 246799),
('Tianshui', 'CHN', 'Gansu', 244974),
('Nanyang', 'CHN', 'Henan', 243303),
('Cangzhou', 'CHN', 'Hebei', 242708),
('Yibin', 'CHN', 'Sichuan', 241019),
('Huaiyin', 'CHN', 'Jiangsu', 239675),
('Dunhua', 'CHN', 'Jilin', 235100),
('Yanji', 'CHN', 'Jilin', 230892),
('Jiangmen', 'CHN', 'Guangdong', 230587),
('Tongling', 'CHN', 'Anhui', 228017),
('Suihua', 'CHN', 'Heilongjiang', 227881),
('Gongziling', 'CHN', 'Jilin', 226569),
('Xiantao', 'CHN', 'Hubei', 222884),
('Chaoyang', 'CHN', 'Liaoning', 222394),
('Ganzhou', 'CHN', 'Jiangxi', 220129),
('Huzhou', 'CHN', 'Zhejiang', 218071),
('Baicheng', 'CHN', 'Jilin', 217987),
('Shangzi', 'CHN', 'Heilongjiang', 215373),
('Yangjiang', 'CHN', 'Guangdong', 215196),
('Qitaihe', 'CHN', 'Heilongjiang', 214957),
('Gejiu', 'CHN', 'Yunnan', 214294),
('Jiangyin', 'CHN', 'Jiangsu', 213659),
('Hebi', 'CHN', 'Henan', 212976),
('Jiaxing', 'CHN', 'Zhejiang', 211526),
('Wuzhou', 'CHN', 'Guangxi', 210452),
('Meihekou', 'CHN', 'Jilin', 209038),
('Xuchang', 'CHN', 'Henan', 208815),
('Liaocheng', 'CHN', 'Shandong', 207844),
('Haicheng', 'CHN', 'Liaoning', 205560),
('Qianjiang', 'CHN', 'Hubei', 205504),
('Baiyin', 'CHN', 'Gansu', 204970),
('Bei´an', 'CHN', 'Heilongjiang', 204899),
('Yixing', 'CHN', 'Jiangsu', 200824),
('Laizhou', 'CHN', 'Shandong', 198664),
('Qaramay', 'CHN', 'Xinxiang', 197602),
('Acheng', 'CHN', 'Heilongjiang', 197595),
('Dezhou', 'CHN', 'Shandong', 195485),
('Nanping', 'CHN', 'Fujian', 195064),
('Zhaoqing', 'CHN', 'Guangdong', 194784),
('Beipiao', 'CHN', 'Liaoning', 194301),
('Fengcheng', 'CHN', 'Jiangxi', 193784),
('Fuyu', 'CHN', 'Jilin', 192981),
('Xinyang', 'CHN', 'Henan', 192509),
('Dongtai', 'CHN', 'Jiangsu', 192247),
('Yuci', 'CHN', 'Shanxi', 191356),
('Honghu', 'CHN', 'Hubei', 190772),
('Ezhou', 'CHN', 'Hubei', 190123),
('Heze', 'CHN', 'Shandong', 189293),
('Daxian', 'CHN', 'Sichuan', 188101),
('Linfen', 'CHN', 'Shanxi', 187309),
('Tianmen', 'CHN', 'Hubei', 186332),
('Yiyang', 'CHN', 'Hunan', 185818),
('Quanzhou', 'CHN', 'Fujian', 185154),
('Rizhao', 'CHN', 'Shandong', 185048),
('Deyang', 'CHN', 'Sichuan', 182488),
('Guangyuan', 'CHN', 'Sichuan', 182241),
('Changshu', 'CHN', 'Jiangsu', 181805),
('Zhangzhou', 'CHN', 'Fujian', 181424),
('Hailar', 'CHN', 'Inner Mongolia', 180650),
('Nanchong', 'CHN', 'Sichuan', 180273),
('Jiutai', 'CHN', 'Jilin', 180130),
('Zhaodong', 'CHN', 'Heilongjiang', 179976),
('Shaoxing', 'CHN', 'Zhejiang', 179818),
('Fuyang', 'CHN', 'Anhui', 179572),
('Maoming', 'CHN', 'Guangdong', 178683),
('Qujing', 'CHN', 'Yunnan', 178669),
('Ghulja', 'CHN', 'Xinxiang', 177193),
('Jiaohe', 'CHN', 'Jilin', 176367),
('Puyang', 'CHN', 'Henan', 175988),
('Huadian', 'CHN', 'Jilin', 175873),
('Jiangyou', 'CHN', 'Sichuan', 175753),
('Qashqar', 'CHN', 'Xinxiang', 174570),
('Anshun', 'CHN', 'Guizhou', 174142),
('Fuling', 'CHN', 'Sichuan', 173878),
('Xinyu', 'CHN', 'Jiangxi', 173524),
('Hanzhong', 'CHN', 'Shaanxi', 169930),
('Danyang', 'CHN', 'Jiangsu', 169603),
('Chenzhou', 'CHN', 'Hunan', 169400),
('Xiaogan', 'CHN', 'Hubei', 166280),
('Shangqiu', 'CHN', 'Henan', 164880),
('Zhuhai', 'CHN', 'Guangdong', 164747),
('Qingyuan', 'CHN', 'Guangdong', 164641),
('Aqsu', 'CHN', 'Xinxiang', 164092),
('Jining', 'CHN', 'Inner Mongolia', 163552),
('Xiaoshan', 'CHN', 'Zhejiang', 162930),
('Zaoyang', 'CHN', 'Hubei', 162198),
('Xinghua', 'CHN', 'Jiangsu', 161910),
('Hami', 'CHN', 'Xinxiang', 161315),
('Huizhou', 'CHN', 'Guangdong', 161023),
('Jinmen', 'CHN', 'Hubei', 160794),
('Sanming', 'CHN', 'Fujian', 160691),
('Ulanhot', 'CHN', 'Inner Mongolia', 159538),
('Korla', 'CHN', 'Xinxiang', 159344),
('Wanxian', 'CHN', 'Sichuan', 156823),
('Rui´an', 'CHN', 'Zhejiang', 156468),
('Zhoushan', 'CHN', 'Zhejiang', 156317),
('Liangcheng', 'CHN', 'Shandong', 156307),
('Jiaozhou', 'CHN', 'Shandong', 153364),
('Taizhou', 'CHN', 'Jiangsu', 152442),
('Suzhou', 'CHN', 'Anhui', 151862),
('Yichun', 'CHN', 'Jiangxi', 151585),
('Taonan', 'CHN', 'Jilin', 150168),
('Pingdu', 'CHN', 'Shandong', 150123),
('Ji´an', 'CHN', 'Jiangxi', 148583),
('Longkou', 'CHN', 'Shandong', 148362),
('Langfang', 'CHN', 'Hebei', 148105),
('Zhoukou', 'CHN', 'Henan', 146288),
('Suining', 'CHN', 'Sichuan', 146086),
('Yulin', 'CHN', 'Guangxi', 144467),
('Jinhua', 'CHN', 'Zhejiang', 144280),
('Liu´an', 'CHN', 'Anhui', 144248),
('Shuangcheng', 'CHN', 'Heilongjiang', 142659),
('Suizhou', 'CHN', 'Hubei', 142302),
('Ankang', 'CHN', 'Shaanxi', 142170),
('Weinan', 'CHN', 'Shaanxi', 140169),
('Longjing', 'CHN', 'Jilin', 139417),
('Da´an', 'CHN', 'Jilin', 138963),
('Lengshuijiang', 'CHN', 'Hunan', 137994),
('Laiyang', 'CHN', 'Shandong', 137080),
('Xianning', 'CHN', 'Hubei', 136811),
('Dali', 'CHN', 'Yunnan', 136554),
('Anda', 'CHN', 'Heilongjiang', 136446),
('Jincheng', 'CHN', 'Shanxi', 136396),
('Longyan', 'CHN', 'Fujian', 134481),
('Xichang', 'CHN', 'Sichuan', 134419),
('Wendeng', 'CHN', 'Shandong', 133910),
('Hailun', 'CHN', 'Heilongjiang', 133565),
('Binzhou', 'CHN', 'Shandong', 133555),
('Linhe', 'CHN', 'Inner Mongolia', 133183),
('Wuwei', 'CHN', 'Gansu', 133101),
('Duyun', 'CHN', 'Guizhou', 132971),
('Mishan', 'CHN', 'Heilongjiang', 132744),
('Shangrao', 'CHN', 'Jiangxi', 132455),
('Changji', 'CHN', 'Xinxiang', 132260),
('Meixian', 'CHN', 'Guangdong', 132156),
('Yushu', 'CHN', 'Jilin', 131861),
('Tiefa', 'CHN', 'Liaoning', 131807),
('Huai´an', 'CHN', 'Jiangsu', 131149),
('Leiyang', 'CHN', 'Hunan', 130115),
('Zalantun', 'CHN', 'Inner Mongolia', 130031),
('Weihai', 'CHN', 'Shandong', 128888),
('Loudi', 'CHN', 'Hunan', 128418),
('Qingzhou', 'CHN', 'Shandong', 128258),
('Qidong', 'CHN', 'Jiangsu', 126872),
('Huaihua', 'CHN', 'Hunan', 126785),
('Luohe', 'CHN', 'Henan', 126438),
('Chuzhou', 'CHN', 'Anhui', 125341),
('Kaiyuan', 'CHN', 'Liaoning', 124219),
('Linqing', 'CHN', 'Shandong', 123958),
('Chaohu', 'CHN', 'Anhui', 123676),
('Laohekou', 'CHN', 'Hubei', 123366),
('Dujiangyan', 'CHN', 'Sichuan', 123357),
('Zhumadian', 'CHN', 'Henan', 123232),
('Linchuan', 'CHN', 'Jiangxi', 121949),
('Jiaonan', 'CHN', 'Shandong', 121397),
('Sanmenxia', 'CHN', 'Henan', 120523),
('Heyuan', 'CHN', 'Guangdong', 120101),
('Manzhouli', 'CHN', 'Inner Mongolia', 120023),
('Lhasa', 'CHN', 'Tibet', 120000),
('Lianyuan', 'CHN', 'Hunan', 118858),
('Kuytun', 'CHN', 'Xinxiang', 118553),
('Puqi', 'CHN', 'Hubei', 117264),
('Hongjiang', 'CHN', 'Hunan', 116188),
('Qinzhou', 'CHN', 'Guangxi', 114586),
('Renqiu', 'CHN', 'Hebei', 114256),
('Yuyao', 'CHN', 'Zhejiang', 114065),
('Guigang', 'CHN', 'Guangxi', 114025),
('Kaili', 'CHN', 'Guizhou', 113958),
('Yan´an', 'CHN', 'Shaanxi', 113277),
('Beihai', 'CHN', 'Guangxi', 112673),
('Xuangzhou', 'CHN', 'Anhui', 112673),
('Quzhou', 'CHN', 'Zhejiang', 112373),
('Yong´an', 'CHN', 'Fujian', 111762),
('Zixing', 'CHN', 'Hunan', 110048),
('Liyang', 'CHN', 'Jiangsu', 109520),
('Yizheng', 'CHN', 'Jiangsu', 109268),
('Yumen', 'CHN', 'Gansu', 109234),
('Liling', 'CHN', 'Hunan', 108504),
('Yuncheng', 'CHN', 'Shanxi', 108359),
('Shanwei', 'CHN', 'Guangdong', 107847),
('Cixi', 'CHN', 'Zhejiang', 107329),
('Yuanjiang', 'CHN', 'Hunan', 107004),
('Bozhou', 'CHN', 'Anhui', 106346),
('Jinchang', 'CHN', 'Gansu', 105287),
('Fu´an', 'CHN', 'Fujian', 105265),
('Suqian', 'CHN', 'Jiangsu', 105021),
('Shishou', 'CHN', 'Hubei', 104571),
('Hengshui', 'CHN', 'Hebei', 104269),
('Danjiangkou', 'CHN', 'Hubei', 103211),
('Fujin', 'CHN', 'Heilongjiang', 103104),
('Sanya', 'CHN', 'Hainan', 102820),
('Guangshui', 'CHN', 'Hubei', 102770),
('Huangshan', 'CHN', 'Anhui', 102628),
('Xingcheng', 'CHN', 'Liaoning', 102384),
('Zhucheng', 'CHN', 'Shandong', 102134),
('Kunshan', 'CHN', 'Jiangsu', 102052),
('Haining', 'CHN', 'Zhejiang', 100478),
('Pingliang', 'CHN', 'Gansu', 99265),
('Fuqing', 'CHN', 'Fujian', 99193),
('Xinzhou', 'CHN', 'Shanxi', 98667),
('Jieyang', 'CHN', 'Guangdong', 98531),
('Zhangjiagang', 'CHN', 'Jiangsu', 97994),
('Tong Xian', 'CHN', 'Peking', 97168),
('Ya´an', 'CHN', 'Sichuan', 95900),
('Jinzhou', 'CHN', 'Liaoning', 95761),
('Emeishan', 'CHN', 'Sichuan', 94000),
('Enshi', 'CHN', 'Hubei', 93056),
('Bose', 'CHN', 'Guangxi', 93009),
('Yuzhou', 'CHN', 'Henan', 92889),
('Kaiyuan', 'CHN', 'Yunnan', 91999),
('Tumen', 'CHN', 'Jilin', 91471),
('Putian', 'CHN', 'Fujian', 91030),
('Linhai', 'CHN', 'Zhejiang', 90870),
('Xilin Hot', 'CHN', 'Inner Mongolia', 90646),
('Shaowu', 'CHN', 'Fujian', 90286),
('Junan', 'CHN', 'Shandong', 90222),
('Huaying', 'CHN', 'Sichuan', 89400),
('Pingyi', 'CHN', 'Shandong', 89373),
('Huangyan', 'CHN', 'Zhejiang', 89288),
('Bishkek', 'KGZ', 'Bishkek shaary', 589400),
('Osh', 'KGZ', 'Osh', 222700),
('Bikenibeu', 'KIR', 'South Tarawa', 5055),
('Bairiki', 'KIR', 'South Tarawa', 2226),
('Santafé de Bogotá', 'COL', 'Santafé de Bogotá', 6260862),
('Cali', 'COL', 'Valle', 2077386),
('Medellín', 'COL', 'Antioquia', 1861265),
('Barranquilla', 'COL', 'Atlántico', 1223260),
('Cartagena', 'COL', 'Bolívar', 805757),
('Cúcuta', 'COL', 'Norte de Santander', 606932),
('Bucaramanga', 'COL', 'Santander', 515555),
('Ibagué', 'COL', 'Tolima', 393664),
('Pereira', 'COL', 'Risaralda', 381725),
('Santa Marta', 'COL', 'Magdalena', 359147),
('Manizales', 'COL', 'Caldas', 337580),
('Bello', 'COL', 'Antioquia', 333470),
('Pasto', 'COL', 'Nariño', 332396),
('Neiva', 'COL', 'Huila', 300052),
('Soledad', 'COL', 'Atlántico', 295058),
('Armenia', 'COL', 'Quindío', 288977),
('Villavicencio', 'COL', 'Meta', 273140),
('Soacha', 'COL', 'Cundinamarca', 272058),
('Valledupar', 'COL', 'Cesar', 263247),
('Montería', 'COL', 'Córdoba', 248245),
('Itagüí', 'COL', 'Antioquia', 228985),
('Palmira', 'COL', 'Valle', 226509),
('Buenaventura', 'COL', 'Valle', 224336),
('Floridablanca', 'COL', 'Santander', 221913),
('Sincelejo', 'COL', 'Sucre', 220704),
('Popayán', 'COL', 'Cauca', 200719),
('Barrancabermeja', 'COL', 'Santander', 178020),
('Dos Quebradas', 'COL', 'Risaralda', 159363),
('Tuluá', 'COL', 'Valle', 152488),
('Envigado', 'COL', 'Antioquia', 135848),
('Cartago', 'COL', 'Valle', 125884),
('Girardot', 'COL', 'Cundinamarca', 110963),
('Buga', 'COL', 'Valle', 110699),
('Tunja', 'COL', 'Boyacá', 109740),
('Florencia', 'COL', 'Caquetá', 108574),
('Maicao', 'COL', 'La Guajira', 108053),
('Sogamoso', 'COL', 'Boyacá', 107728),
('Giron', 'COL', 'Santander', 90688),
('Moroni', 'COM', 'Njazidja', 36000),
('Brazzaville', 'COG', 'Brazzaville', 950000),
('Pointe-Noire', 'COG', 'Kouilou', 500000),
('Kinshasa', 'COD', 'Kinshasa', 5064000),
('Lubumbashi', 'COD', 'Shaba', 851381),
('Mbuji-Mayi', 'COD', 'East Kasai', 806475),
('Kolwezi', 'COD', 'Shaba', 417810),
('Kisangani', 'COD', 'Haute-Zaïre', 417517),
('Kananga', 'COD', 'West Kasai', 393030),
('Likasi', 'COD', 'Shaba', 299118),
('Bukavu', 'COD', 'South Kivu', 201569),
('Kikwit', 'COD', 'Bandundu', 182142),
('Tshikapa', 'COD', 'West Kasai', 180860),
('Matadi', 'COD', 'Bas-Zaïre', 172730),
('Mbandaka', 'COD', 'Equateur', 169841),
('Mwene-Ditu', 'COD', 'East Kasai', 137459),
('Boma', 'COD', 'Bas-Zaïre', 135284),
('Uvira', 'COD', 'South Kivu', 115590),
('Butembo', 'COD', 'North Kivu', 109406),
('Goma', 'COD', 'North Kivu', 109094),
('Kalemie', 'COD', 'Shaba', 101309),
('Bantam', 'CCK', 'Home Island', 503),
('West Island', 'CCK', 'West Island', 167),
('Pyongyang', 'PRK', 'Pyongyang-si', 2484000),
('Hamhung', 'PRK', 'Hamgyong N', 709730),
('Chongjin', 'PRK', 'Hamgyong P', 582480),
('Nampo', 'PRK', 'Nampo-si', 566200),
('Sinuiju', 'PRK', 'Pyongan P', 326011),
('Wonsan', 'PRK', 'Kangwon', 300148),
('Phyongsong', 'PRK', 'Pyongan N', 272934),
('Sariwon', 'PRK', 'Hwanghae P', 254146),
('Haeju', 'PRK', 'Hwanghae N', 229172),
('Kanggye', 'PRK', 'Chagang', 223410),
('Kimchaek', 'PRK', 'Hamgyong P', 179000),
('Hyesan', 'PRK', 'Yanggang', 178020),
('Kaesong', 'PRK', 'Kaesong-si', 171500),
('Seoul', 'KOR', 'Seoul', 9981619),
('Pusan', 'KOR', 'Pusan', 3804522),
('Inchon', 'KOR', 'Inchon', 2559424),
('Taegu', 'KOR', 'Taegu', 2548568),
('Taejon', 'KOR', 'Taejon', 1425835),
('Kwangju', 'KOR', 'Kwangju', 1368341),
('Ulsan', 'KOR', 'Kyongsangnam', 1084891),
('Songnam', 'KOR', 'Kyonggi', 869094),
('Puchon', 'KOR', 'Kyonggi', 779412),
('Suwon', 'KOR', 'Kyonggi', 755550),
('Anyang', 'KOR', 'Kyonggi', 591106),
('Chonju', 'KOR', 'Chollabuk', 563153),
('Chongju', 'KOR', 'Chungchongbuk', 531376),
('Koyang', 'KOR', 'Kyonggi', 518282),
('Ansan', 'KOR', 'Kyonggi', 510314),
('Pohang', 'KOR', 'Kyongsangbuk', 508899),
('Chang-won', 'KOR', 'Kyongsangnam', 481694),
('Masan', 'KOR', 'Kyongsangnam', 441242),
('Kwangmyong', 'KOR', 'Kyonggi', 350914),
('Chonan', 'KOR', 'Chungchongnam', 330259),
('Chinju', 'KOR', 'Kyongsangnam', 329886),
('Iksan', 'KOR', 'Chollabuk', 322685),
('Pyongtaek', 'KOR', 'Kyonggi', 312927),
('Kumi', 'KOR', 'Kyongsangbuk', 311431),
('Uijongbu', 'KOR', 'Kyonggi', 276111),
('Kyongju', 'KOR', 'Kyongsangbuk', 272968),
('Kunsan', 'KOR', 'Chollabuk', 266569),
('Cheju', 'KOR', 'Cheju', 258511),
('Kimhae', 'KOR', 'Kyongsangnam', 256370),
('Sunchon', 'KOR', 'Chollanam', 249263),
('Mokpo', 'KOR', 'Chollanam', 247452),
('Yong-in', 'KOR', 'Kyonggi', 242643),
('Wonju', 'KOR', 'Kang-won', 237460),
('Kunpo', 'KOR', 'Kyonggi', 235233),
('Chunchon', 'KOR', 'Kang-won', 234528),
('Namyangju', 'KOR', 'Kyonggi', 229060),
('Kangnung', 'KOR', 'Kang-won', 220403),
('Chungju', 'KOR', 'Chungchongbuk', 205206),
('Andong', 'KOR', 'Kyongsangbuk', 188443),
('Yosu', 'KOR', 'Chollanam', 183596),
('Kyongsan', 'KOR', 'Kyongsangbuk', 173746),
('Paju', 'KOR', 'Kyonggi', 163379),
('Yangsan', 'KOR', 'Kyongsangnam', 163351),
('Ichon', 'KOR', 'Kyonggi', 155332),
('Asan', 'KOR', 'Chungchongnam', 154663),
('Koje', 'KOR', 'Kyongsangnam', 147562),
('Kimchon', 'KOR', 'Kyongsangbuk', 147027),
('Nonsan', 'KOR', 'Chungchongnam', 146619),
('Kuri', 'KOR', 'Kyonggi', 142173),
('Chong-up', 'KOR', 'Chollabuk', 139111),
('Chechon', 'KOR', 'Chungchongbuk', 137070),
('Sosan', 'KOR', 'Chungchongnam', 134746),
('Shihung', 'KOR', 'Kyonggi', 133443),
('Tong-yong', 'KOR', 'Kyongsangnam', 131717),
('Kongju', 'KOR', 'Chungchongnam', 131229),
('Yongju', 'KOR', 'Kyongsangbuk', 131097),
('Chinhae', 'KOR', 'Kyongsangnam', 125997),
('Sangju', 'KOR', 'Kyongsangbuk', 124116),
('Poryong', 'KOR', 'Chungchongnam', 122604),
('Kwang-yang', 'KOR', 'Chollanam', 122052),
('Miryang', 'KOR', 'Kyongsangnam', 121501),
('Hanam', 'KOR', 'Kyonggi', 115812),
('Kimje', 'KOR', 'Chollabuk', 115427),
('Yongchon', 'KOR', 'Kyongsangbuk', 113511),
('Sachon', 'KOR', 'Kyongsangnam', 113494),
('Uiwang', 'KOR', 'Kyonggi', 108788),
('Naju', 'KOR', 'Chollanam', 107831),
('Namwon', 'KOR', 'Chollabuk', 103544),
('Tonghae', 'KOR', 'Kang-won', 95472),
('Mun-gyong', 'KOR', 'Kyongsangbuk', 92239),
('Athenai', 'GRC', 'Attika', 772072),
('Thessaloniki', 'GRC', 'Central Macedonia', 383967),
('Pireus', 'GRC', 'Attika', 182671),
('Patras', 'GRC', 'West Greece', 153344),
('Peristerion', 'GRC', 'Attika', 137288),
('Herakleion', 'GRC', 'Crete', 116178),
('Kallithea', 'GRC', 'Attika', 114233),
('Larisa', 'GRC', 'Thessalia', 113090),
('Zagreb', 'HRV', 'Grad Zagreb', 706770),
('Split', 'HRV', 'Split-Dalmatia', 189388),
('Rijeka', 'HRV', 'Primorje-Gorski Kota', 167964),
('Osijek', 'HRV', 'Osijek-Baranja', 104761),
('La Habana', 'CUB', 'La Habana', 2256000),
('Santiago de Cuba', 'CUB', 'Santiago de Cuba', 433180),
('Camagüey', 'CUB', 'Camagüey', 298726),
('Holguín', 'CUB', 'Holguín', 249492),
('Santa Clara', 'CUB', 'Villa Clara', 207350),
('Guantánamo', 'CUB', 'Guantánamo', 205078),
('Pinar del Río', 'CUB', 'Pinar del Río', 142100),
('Bayamo', 'CUB', 'Granma', 141000),
('Cienfuegos', 'CUB', 'Cienfuegos', 132770),
('Victoria de las Tunas', 'CUB', 'Las Tunas', 132350),
('Matanzas', 'CUB', 'Matanzas', 123273),
('Manzanillo', 'CUB', 'Granma', 109350),
('Sancti-Spíritus', 'CUB', 'Sancti-Spíritus', 100751),
('Ciego de Ávila', 'CUB', 'Ciego de Ávila', 98505),
('al-Salimiya', 'KWT', 'Hawalli', 130215),
('Jalib al-Shuyukh', 'KWT', 'Hawalli', 102178),
('Kuwait', 'KWT', 'al-Asima', 28859),
('Nicosia', 'CYP', 'Nicosia', 195000),
('Limassol', 'CYP', 'Limassol', 154400),
('Vientiane', 'LAO', 'Viangchan', 531800),
('Savannakhet', 'LAO', 'Savannakhet', 96652),
('Riga', 'LVA', 'Riika', 764328),
('Daugavpils', 'LVA', 'Daugavpils', 114829),
('Liepaja', 'LVA', 'Liepaja', 89439),
('Maseru', 'LSO', 'Maseru', 297000),
('Beirut', 'LBN', 'Beirut', 1100000),
('Tripoli', 'LBN', 'al-Shamal', 240000),
('Monrovia', 'LBR', 'Montserrado', 850000),
('Tripoli', 'LBY', 'Tripoli', 1682000),
('Bengasi', 'LBY', 'Bengasi', 804000),
('Misrata', 'LBY', 'Misrata', 121669),
('al-Zawiya', 'LBY', 'al-Zawiya', 89338),
('Schaan', 'LIE', 'Schaan', 5346),
('Vaduz', 'LIE', 'Vaduz', 5043),
('Vilnius', 'LTU', 'Vilna', 577969),
('Kaunas', 'LTU', 'Kaunas', 412639),
('Klaipeda', 'LTU', 'Klaipeda', 202451),
('iauliai', 'LTU', 'iauliai', 146563),
('Panevezys', 'LTU', 'Panevezys', 133695),
('Luxembourg [Luxemburg/Lëtzebuerg]', 'LUX', 'Luxembourg', 80700),
('El-Aaiún', 'ESH', 'El-Aaiún', 169000),
('Macao', 'MAC', 'Macau', 437500),
('Antananarivo', 'MDG', 'Antananarivo', 675669),
('Toamasina', 'MDG', 'Toamasina', 127441),
('Antsirabé', 'MDG', 'Antananarivo', 120239),
('Mahajanga', 'MDG', 'Mahajanga', 100807),
('Fianarantsoa', 'MDG', 'Fianarantsoa', 99005),
('Skopje', 'MKD', 'Skopje', 444299),
('Blantyre', 'MWI', 'Blantyre', 478155),
('Lilongwe', 'MWI', 'Lilongwe', 435964),
('Male', 'MDV', 'Maale', 71000),
('Kuala Lumpur', 'MYS', 'Wilayah Persekutuan', 1297526),
('Ipoh', 'MYS', 'Perak', 382853),
('Johor Baharu', 'MYS', 'Johor', 328436),
('Petaling Jaya', 'MYS', 'Selangor', 254350),
('Kelang', 'MYS', 'Selangor', 243355),
('Kuala Terengganu', 'MYS', 'Terengganu', 228119),
('Pinang', 'MYS', 'Pulau Pinang', 219603),
('Kota Bharu', 'MYS', 'Kelantan', 219582),
('Kuantan', 'MYS', 'Pahang', 199484),
('Taiping', 'MYS', 'Perak', 183261),
('Seremban', 'MYS', 'Negeri Sembilan', 182869),
('Kuching', 'MYS', 'Sarawak', 148059),
('Sibu', 'MYS', 'Sarawak', 126381),
('Sandakan', 'MYS', 'Sabah', 125841),
('Alor Setar', 'MYS', 'Kedah', 124412),
('Selayang Baru', 'MYS', 'Selangor', 124228),
('Sungai Petani', 'MYS', 'Kedah', 114763),
('Shah Alam', 'MYS', 'Selangor', 102019),
('Bamako', 'MLI', 'Bamako', 809552),
('Birkirkara', 'MLT', 'Outer Harbour', 21445),
('Valletta', 'MLT', 'Inner Harbour', 7073),
('Casablanca', 'MAR', 'Casablanca', 2940623),
('Rabat', 'MAR', 'Rabat-Salé-Zammour-Z', 623457),
('Marrakech', 'MAR', 'Marrakech-Tensift-Al', 621914),
('Fès', 'MAR', 'Fès-Boulemane', 541162),
('Tanger', 'MAR', 'Tanger-Tétouan', 521735),
('Salé', 'MAR', 'Rabat-Salé-Zammour-Z', 504420),
('Meknès', 'MAR', 'Meknès-Tafilalet', 460000),
('Oujda', 'MAR', 'Oriental', 365382),
('Kénitra', 'MAR', 'Gharb-Chrarda-Béni H', 292600),
('Tétouan', 'MAR', 'Tanger-Tétouan', 277516),
('Safi', 'MAR', 'Doukkala-Abda', 262300),
('Agadir', 'MAR', 'Souss Massa-Draâ', 155244),
('Mohammedia', 'MAR', 'Casablanca', 154706),
('Khouribga', 'MAR', 'Chaouia-Ouardigha', 152090),
('Beni-Mellal', 'MAR', 'Tadla-Azilal', 140212),
('Témara', 'MAR', 'Rabat-Salé-Zammour-Z', 126303),
('El Jadida', 'MAR', 'Doukkala-Abda', 119083),
('Nador', 'MAR', 'Oriental', 112450),
('Ksar el Kebir', 'MAR', 'Tanger-Tétouan', 107065),
('Settat', 'MAR', 'Chaouia-Ouardigha', 96200),
('Taza', 'MAR', 'Taza-Al Hoceima-Taou', 92700),
('El Araich', 'MAR', 'Tanger-Tétouan', 90400),
('Dalap-Uliga-Darrit', 'MHL', 'Majuro', 28000),
('Fort-de-France', 'MTQ', 'Fort-de-France', 94050),
('Nouakchott', 'MRT', 'Nouakchott', 667300),
('Nouâdhibou', 'MRT', 'Dakhlet Nouâdhibou', 97600),
('Port-Louis', 'MUS', 'Port-Louis', 138200),
('Beau Bassin-Rose Hill', 'MUS', 'Plaines Wilhelms', 100616),
('Vacoas-Phoenix', 'MUS', 'Plaines Wilhelms', 98464),
('Mamoutzou', 'MYT', 'Mamoutzou', 12000),
('Ciudad de México', 'MEX', 'Distrito Federal', 8591309),
('Guadalajara', 'MEX', 'Jalisco', 1647720),
('Ecatepec de Morelos', 'MEX', 'México', 1620303),
('Puebla', 'MEX', 'Puebla', 1346176),
('Nezahualcóyotl', 'MEX', 'México', 1224924),
('Juárez', 'MEX', 'Chihuahua', 1217818),
('Tijuana', 'MEX', 'Baja California', 1212232),
('León', 'MEX', 'Guanajuato', 1133576),
('Monterrey', 'MEX', 'Nuevo León', 1108499),
('Zapopan', 'MEX', 'Jalisco', 1002239),
('Naucalpan de Juárez', 'MEX', 'México', 857511),
('Mexicali', 'MEX', 'Baja California', 764902),
('Culiacán', 'MEX', 'Sinaloa', 744859),
('Acapulco de Juárez', 'MEX', 'Guerrero', 721011),
('Tlalnepantla de Baz', 'MEX', 'México', 720755),
('Mérida', 'MEX', 'Yucatán', 703324),
('Chihuahua', 'MEX', 'Chihuahua', 670208),
('San Luis Potosí', 'MEX', 'San Luis Potosí', 669353),
('Guadalupe', 'MEX', 'Nuevo León', 668780),
('Toluca', 'MEX', 'México', 665617),
('Aguascalientes', 'MEX', 'Aguascalientes', 643360),
('Querétaro', 'MEX', 'Querétaro de Arteaga', 639839),
('Morelia', 'MEX', 'Michoacán de Ocampo', 619958),
('Hermosillo', 'MEX', 'Sonora', 608697),
('Saltillo', 'MEX', 'Coahuila de Zaragoza', 577352),
('Torreón', 'MEX', 'Coahuila de Zaragoza', 529093),
('Centro (Villahermosa)', 'MEX', 'Tabasco', 519873),
('San Nicolás de los Garza', 'MEX', 'Nuevo León', 495540),
('Durango', 'MEX', 'Durango', 490524),
('Chimalhuacán', 'MEX', 'México', 490245),
('Tlaquepaque', 'MEX', 'Jalisco', 475472),
('Atizapán de Zaragoza', 'MEX', 'México', 467262),
('Veracruz', 'MEX', 'Veracruz', 457119),
('Cuautitlán Izcalli', 'MEX', 'México', 452976),
('Irapuato', 'MEX', 'Guanajuato', 440039),
('Tuxtla Gutiérrez', 'MEX', 'Chiapas', 433544),
('Tultitlán', 'MEX', 'México', 432411),
('Reynosa', 'MEX', 'Tamaulipas', 419776),
('Benito Juárez', 'MEX', 'Quintana Roo', 419276),
('Matamoros', 'MEX', 'Tamaulipas', 416428),
('Xalapa', 'MEX', 'Veracruz', 390058),
('Celaya', 'MEX', 'Guanajuato', 382140),
('Mazatlán', 'MEX', 'Sinaloa', 380265),
('Ensenada', 'MEX', 'Baja California', 369573),
('Ahome', 'MEX', 'Sinaloa', 358663),
('Cajeme', 'MEX', 'Sonora', 355679),
('Cuernavaca', 'MEX', 'Morelos', 337966),
('Tonalá', 'MEX', 'Jalisco', 336109),
('Valle de Chalco Solidaridad', 'MEX', 'México', 323113),
('Nuevo Laredo', 'MEX', 'Tamaulipas', 310277),
('Tepic', 'MEX', 'Nayarit', 305025),
('Tampico', 'MEX', 'Tamaulipas', 294789),
('Ixtapaluca', 'MEX', 'México', 293160),
('Apodaca', 'MEX', 'Nuevo León', 282941),
('Guasave', 'MEX', 'Sinaloa', 277201),
('Gómez Palacio', 'MEX', 'Durango', 272806),
('Tapachula', 'MEX', 'Chiapas', 271141),
('Nicolás Romero', 'MEX', 'México', 269393),
('Coatzacoalcos', 'MEX', 'Veracruz', 267037),
('Uruapan', 'MEX', 'Michoacán de Ocampo', 265211),
('Victoria', 'MEX', 'Tamaulipas', 262686),
('Oaxaca de Juárez', 'MEX', 'Oaxaca', 256848),
('Coacalco de Berriozábal', 'MEX', 'México', 252270),
('Pachuca de Soto', 'MEX', 'Hidalgo', 244688),
('General Escobedo', 'MEX', 'Nuevo León', 232961),
('Salamanca', 'MEX', 'Guanajuato', 226864),
('Santa Catarina', 'MEX', 'Nuevo León', 226573),
('Tehuacán', 'MEX', 'Puebla', 225943),
('Chalco', 'MEX', 'México', 222201),
('Cárdenas', 'MEX', 'Tabasco', 216903),
('Campeche', 'MEX', 'Campeche', 216735),
('La Paz', 'MEX', 'México', 213045),
('Othón P. Blanco (Chetumal)', 'MEX', 'Quintana Roo', 208014),
('Texcoco', 'MEX', 'México', 203681),
('La Paz', 'MEX', 'Baja California Sur', 196708),
('Metepec', 'MEX', 'México', 194265),
('Monclova', 'MEX', 'Coahuila de Zaragoza', 193657),
('Huixquilucan', 'MEX', 'México', 193156),
('Chilpancingo de los Bravo', 'MEX', 'Guerrero', 192509),
('Puerto Vallarta', 'MEX', 'Jalisco', 183741),
('Fresnillo', 'MEX', 'Zacatecas', 182744),
('Ciudad Madero', 'MEX', 'Tamaulipas', 182012),
('Soledad de Graciano Sánchez', 'MEX', 'San Luis Potosí', 179956),
('San Juan del Río', 'MEX', 'Querétaro', 179300),
('San Felipe del Progreso', 'MEX', 'México', 177330),
('Córdoba', 'MEX', 'Veracruz', 176952),
('Tecámac', 'MEX', 'México', 172410),
('Ocosingo', 'MEX', 'Chiapas', 171495),
('Carmen', 'MEX', 'Campeche', 171367),
('Lázaro Cárdenas', 'MEX', 'Michoacán de Ocampo', 170878),
('Jiutepec', 'MEX', 'Morelos', 170428),
('Papantla', 'MEX', 'Veracruz', 170123),
('Comalcalco', 'MEX', 'Tabasco', 164640),
('Zamora', 'MEX', 'Michoacán de Ocampo', 161191),
('Nogales', 'MEX', 'Sonora', 159103),
('Huimanguillo', 'MEX', 'Tabasco', 158335),
('Cuautla', 'MEX', 'Morelos', 153132),
('Minatitlán', 'MEX', 'Veracruz', 152983),
('Poza Rica de Hidalgo', 'MEX', 'Veracruz', 152678),
('Ciudad Valles', 'MEX', 'San Luis Potosí', 146411),
('Navolato', 'MEX', 'Sinaloa', 145396),
('San Luis Río Colorado', 'MEX', 'Sonora', 145276),
('Pénjamo', 'MEX', 'Guanajuato', 143927),
('San Andrés Tuxtla', 'MEX', 'Veracruz', 142251),
('Guanajuato', 'MEX', 'Guanajuato', 141215),
('Navojoa', 'MEX', 'Sonora', 140495),
('Zitácuaro', 'MEX', 'Michoacán de Ocampo', 137970),
('Boca del Río', 'MEX', 'Veracruz-Llave', 135721),
('Allende', 'MEX', 'Guanajuato', 134645),
('Silao', 'MEX', 'Guanajuato', 134037),
('Macuspana', 'MEX', 'Tabasco', 133795),
('San Juan Bautista Tuxtepec', 'MEX', 'Oaxaca', 133675),
('San Cristóbal de las Casas', 'MEX', 'Chiapas', 132317),
('Valle de Santiago', 'MEX', 'Guanajuato', 130557),
('Guaymas', 'MEX', 'Sonora', 130108),
('Colima', 'MEX', 'Colima', 129454),
('Dolores Hidalgo', 'MEX', 'Guanajuato', 128675),
('Lagos de Moreno', 'MEX', 'Jalisco', 127949),
('Piedras Negras', 'MEX', 'Coahuila de Zaragoza', 127898),
('Altamira', 'MEX', 'Tamaulipas', 127490),
('Túxpam', 'MEX', 'Veracruz', 126475),
('San Pedro Garza García', 'MEX', 'Nuevo León', 126147),
('Cuauhtémoc', 'MEX', 'Chihuahua', 124279),
('Manzanillo', 'MEX', 'Colima', 124014),
('Iguala de la Independencia', 'MEX', 'Guerrero', 123883),
('Zacatecas', 'MEX', 'Zacatecas', 123700),
('Tlajomulco de Zúñiga', 'MEX', 'Jalisco', 123220),
('Tulancingo de Bravo', 'MEX', 'Hidalgo', 121946),
('Zinacantepec', 'MEX', 'México', 121715),
('San Martín Texmelucan', 'MEX', 'Puebla', 121093),
('Tepatitlán de Morelos', 'MEX', 'Jalisco', 118948),
('Martínez de la Torre', 'MEX', 'Veracruz', 118815),
('Orizaba', 'MEX', 'Veracruz', 118488),
('Apatzingán', 'MEX', 'Michoacán de Ocampo', 117849),
('Atlixco', 'MEX', 'Puebla', 117019),
('Delicias', 'MEX', 'Chihuahua', 116132),
('Ixtlahuaca', 'MEX', 'México', 115548),
('El Mante', 'MEX', 'Tamaulipas', 112453),
('Lerdo', 'MEX', 'Durango', 112272),
('Almoloya de Juárez', 'MEX', 'México', 110550),
('Acámbaro', 'MEX', 'Guanajuato', 110487),
('Acuña', 'MEX', 'Coahuila de Zaragoza', 110388),
('Guadalupe', 'MEX', 'Zacatecas', 108881),
('Huejutla de Reyes', 'MEX', 'Hidalgo', 108017),
('Hidalgo', 'MEX', 'Michoacán de Ocampo', 106198),
('Los Cabos', 'MEX', 'Baja California Sur', 105199),
('Comitán de Domínguez', 'MEX', 'Chiapas', 104986),
('Cunduacán', 'MEX', 'Tabasco', 104164),
('Río Bravo', 'MEX', 'Tamaulipas', 103901),
('Temapache', 'MEX', 'Veracruz', 102824),
('Chilapa de Alvarez', 'MEX', 'Guerrero', 102716),
('Hidalgo del Parral', 'MEX', 'Chihuahua', 100881),
('San Francisco del Rincón', 'MEX', 'Guanajuato', 100149),
('Taxco de Alarcón', 'MEX', 'Guerrero', 99907),
('Zumpango', 'MEX', 'México', 99781),
('San Pedro Cholula', 'MEX', 'Puebla', 99734),
('Lerma', 'MEX', 'México', 99714),
('Tecomán', 'MEX', 'Colima', 99296),
('Las Margaritas', 'MEX', 'Chiapas', 97389),
('Cosoleacaque', 'MEX', 'Veracruz', 97199),
('San Luis de la Paz', 'MEX', 'Guanajuato', 96763),
('José Azueta', 'MEX', 'Guerrero', 95448),
('Santiago Ixcuintla', 'MEX', 'Nayarit', 95311),
('San Felipe', 'MEX', 'Guanajuato', 95305),
('Tejupilco', 'MEX', 'México', 94934),
('Tantoyuca', 'MEX', 'Veracruz', 94709),
('Salvatierra', 'MEX', 'Guanajuato', 94322),
('Tultepec', 'MEX', 'México', 93364),
('Temixco', 'MEX', 'Morelos', 92686),
('Matamoros', 'MEX', 'Coahuila de Zaragoza', 91858),
('Pánuco', 'MEX', 'Veracruz', 90551),
('El Fuerte', 'MEX', 'Sinaloa', 89556),
('Tierra Blanca', 'MEX', 'Veracruz', 89143),
('Weno', 'FSM', 'Chuuk', 22000),
('Palikir', 'FSM', 'Pohnpei', 8600),
('Chisinau', 'MDA', 'Chisinau', 719900),
('Tiraspol', 'MDA', 'Dnjestria', 194300),
('Balti', 'MDA', 'Balti', 153400),
('Bender (Tîghina)', 'MDA', 'Bender (Tîghina)', 125700),
('Monte-Carlo', 'MCO', '', 13154),
('Monaco-Ville', 'MCO', '', 1234),
('Ulan Bator', 'MNG', 'Ulaanbaatar', 773700),
('Plymouth', 'MSR', 'Plymouth', 2000),
('Maputo', 'MOZ', 'Maputo', 1018938),
('Matola', 'MOZ', 'Maputo', 424662),
('Beira', 'MOZ', 'Sofala', 397368),
('Nampula', 'MOZ', 'Nampula', 303346),
('Chimoio', 'MOZ', 'Manica', 171056),
('Naçala-Porto', 'MOZ', 'Nampula', 158248),
('Quelimane', 'MOZ', 'Zambézia', 150116),
('Mocuba', 'MOZ', 'Zambézia', 124700),
('Tete', 'MOZ', 'Tete', 101984),
('Xai-Xai', 'MOZ', 'Gaza', 99442),
('Gurue', 'MOZ', 'Zambézia', 99300),
('Maxixe', 'MOZ', 'Inhambane', 93985),
('Rangoon (Yangon)', 'MMR', 'Rangoon [Yangon]', 3361700),
('Mandalay', 'MMR', 'Mandalay', 885300),
('Moulmein (Mawlamyine)', 'MMR', 'Mon', 307900),
('Pegu (Bago)', 'MMR', 'Pegu [Bago]', 190900),
('Bassein (Pathein)', 'MMR', 'Irrawaddy [Ayeyarwad', 183900),
('Monywa', 'MMR', 'Sagaing', 138600),
('Sittwe (Akyab)', 'MMR', 'Rakhine', 137600),
('Taunggyi (Taunggye)', 'MMR', 'Shan', 131500),
('Meikhtila', 'MMR', 'Mandalay', 129700),
('Mergui (Myeik)', 'MMR', 'Tenasserim [Tanintha', 122700),
('Lashio (Lasho)', 'MMR', 'Shan', 107600),
('Prome (Pyay)', 'MMR', 'Pegu [Bago]', 105700),
('Henzada (Hinthada)', 'MMR', 'Irrawaddy [Ayeyarwad', 104700),
('Myingyan', 'MMR', 'Mandalay', 103600),
('Tavoy (Dawei)', 'MMR', 'Tenasserim [Tanintha', 96800),
('Pagakku (Pakokku)', 'MMR', 'Magwe [Magway]', 94800),
('Windhoek', 'NAM', 'Khomas', 169000),
('Yangor', 'NRU', '', 4050),
('Yaren', 'NRU', '', 559),
('Kathmandu', 'NPL', 'Central', 591835),
('Biratnagar', 'NPL', 'Eastern', 157764),
('Pokhara', 'NPL', 'Western', 146318),
('Lalitapur', 'NPL', 'Central', 145847),
('Birgunj', 'NPL', 'Central', 90639),
('Managua', 'NIC', 'Managua', 959000),
('León', 'NIC', 'León', 123865),
('Chinandega', 'NIC', 'Chinandega', 97387),
('Masaya', 'NIC', 'Masaya', 88971),
('Niamey', 'NER', 'Niamey', 420000),
('Zinder', 'NER', 'Zinder', 120892),
('Maradi', 'NER', 'Maradi', 112965),
('Lagos', 'NGA', 'Lagos', 1518000),
('Ibadan', 'NGA', 'Oyo & Osun', 1432000),
('Ogbomosho', 'NGA', 'Oyo & Osun', 730000),
('Kano', 'NGA', 'Kano & Jigawa', 674100),
('Oshogbo', 'NGA', 'Oyo & Osun', 476800),
('Ilorin', 'NGA', 'Kwara & Kogi', 475800),
('Abeokuta', 'NGA', 'Ogun', 427400),
('Port Harcourt', 'NGA', 'Rivers & Bayelsa', 410000),
('Zaria', 'NGA', 'Kaduna', 379200),
('Ilesha', 'NGA', 'Oyo & Osun', 378400),
('Onitsha', 'NGA', 'Anambra & Enugu & Eb', 371900),
('Iwo', 'NGA', 'Oyo & Osun', 362000),
('Ado-Ekiti', 'NGA', 'Ondo & Ekiti', 359400),
('Abuja', 'NGA', 'Federal Capital Dist', 350100),
('Kaduna', 'NGA', 'Kaduna', 342200),
('Mushin', 'NGA', 'Lagos', 333200),
('Maiduguri', 'NGA', 'Borno & Yobe', 320000),
('Enugu', 'NGA', 'Anambra & Enugu & Eb', 316100),
('Ede', 'NGA', 'Oyo & Osun', 307100),
('Aba', 'NGA', 'Imo & Abia', 298900),
('Ife', 'NGA', 'Oyo & Osun', 296800),
('Ila', 'NGA', 'Oyo & Osun', 264000),
('Oyo', 'NGA', 'Oyo & Osun', 256400),
('Ikerre', 'NGA', 'Ondo & Ekiti', 244600),
('Benin City', 'NGA', 'Edo & Delta', 229400),
('Iseyin', 'NGA', 'Oyo & Osun', 217300),
('Katsina', 'NGA', 'Katsina', 206500),
('Jos', 'NGA', 'Plateau & Nassarawa', 206300),
('Sokoto', 'NGA', 'Sokoto & Kebbi & Zam', 204900),
('Ilobu', 'NGA', 'Oyo & Osun', 199000),
('Offa', 'NGA', 'Kwara & Kogi', 197200),
('Ikorodu', 'NGA', 'Lagos', 184900),
('Ilawe-Ekiti', 'NGA', 'Ondo & Ekiti', 184500),
('Owo', 'NGA', 'Ondo & Ekiti', 183500),
('Ikirun', 'NGA', 'Oyo & Osun', 181400),
('Shaki', 'NGA', 'Oyo & Osun', 174500),
('Calabar', 'NGA', 'Cross River', 174400),
('Ondo', 'NGA', 'Ondo & Ekiti', 173600),
('Akure', 'NGA', 'Ondo & Ekiti', 162300),
('Gusau', 'NGA', 'Sokoto & Kebbi & Zam', 158000),
('Ijebu-Ode', 'NGA', 'Ogun', 156400),
('Effon-Alaiye', 'NGA', 'Oyo & Osun', 153100),
('Kumo', 'NGA', 'Bauchi & Gombe', 148000),
('Shomolu', 'NGA', 'Lagos', 147700),
('Oka-Akoko', 'NGA', 'Ondo & Ekiti', 142900),
('Ikare', 'NGA', 'Ondo & Ekiti', 140800),
('Sapele', 'NGA', 'Edo & Delta', 139200),
('Deba Habe', 'NGA', 'Bauchi & Gombe', 138600),
('Minna', 'NGA', 'Niger', 136900),
('Warri', 'NGA', 'Edo & Delta', 126100),
('Bida', 'NGA', 'Niger', 125500),
('Ikire', 'NGA', 'Oyo & Osun', 123300),
('Makurdi', 'NGA', 'Benue', 123100),
('Lafia', 'NGA', 'Plateau & Nassarawa', 122500),
('Inisa', 'NGA', 'Oyo & Osun', 119800),
('Shagamu', 'NGA', 'Ogun', 117200),
('Awka', 'NGA', 'Anambra & Enugu & Eb', 111200),
('Gombe', 'NGA', 'Bauchi & Gombe', 107800),
('Igboho', 'NGA', 'Oyo & Osun', 106800),
('Ejigbo', 'NGA', 'Oyo & Osun', 105900),
('Agege', 'NGA', 'Lagos', 105000),
('Ise-Ekiti', 'NGA', 'Ondo & Ekiti', 103400),
('Ugep', 'NGA', 'Cross River', 102600),
('Epe', 'NGA', 'Lagos', 101000),
('Alofi', 'NIU', '', 682),
('Kingston', 'NFK', '', 800),
('Oslo', 'NOR', 'Oslo', 508726),
('Bergen', 'NOR', 'Hordaland', 230948),
('Trondheim', 'NOR', 'Sør-Trøndelag', 150166),
('Stavanger', 'NOR', 'Rogaland', 108848),
('Bærum', 'NOR', 'Akershus', 101340),
('Abidjan', 'CIV', 'Abidjan', 2500000),
('Bouaké', 'CIV', 'Bouaké', 329850),
('Yamoussoukro', 'CIV', 'Yamoussoukro', 130000),
('Daloa', 'CIV', 'Daloa', 121842),
('Korhogo', 'CIV', 'Korhogo', 109445),
('al-Sib', 'OMN', 'Masqat', 155000),
('Salala', 'OMN', 'Zufar', 131813),
('Bawshar', 'OMN', 'Masqat', 107500),
('Suhar', 'OMN', 'al-Batina', 90814),
('Masqat', 'OMN', 'Masqat', 51969),
('Karachi', 'PAK', 'Sindh', 9269265),
('Lahore', 'PAK', 'Punjab', 5063499),
('Faisalabad', 'PAK', 'Punjab', 1977246),
('Rawalpindi', 'PAK', 'Punjab', 1406214),
('Multan', 'PAK', 'Punjab', 1182441),
('Hyderabad', 'PAK', 'Sindh', 1151274),
('Gujranwala', 'PAK', 'Punjab', 1124749),
('Peshawar', 'PAK', 'Nothwest Border Prov', 988005),
('Quetta', 'PAK', 'Baluchistan', 560307),
('Islamabad', 'PAK', 'Islamabad', 524500),
('Sargodha', 'PAK', 'Punjab', 455360),
('Sialkot', 'PAK', 'Punjab', 417597),
('Bahawalpur', 'PAK', 'Punjab', 403408),
('Sukkur', 'PAK', 'Sindh', 329176),
('Jhang', 'PAK', 'Punjab', 292214),
('Sheikhupura', 'PAK', 'Punjab', 271875),
('Larkana', 'PAK', 'Sindh', 270366),
('Gujrat', 'PAK', 'Punjab', 250121),
('Mardan', 'PAK', 'Nothwest Border Prov', 244511),
('Kasur', 'PAK', 'Punjab', 241649),
('Rahim Yar Khan', 'PAK', 'Punjab', 228479),
('Sahiwal', 'PAK', 'Punjab', 207388),
('Okara', 'PAK', 'Punjab', 200901),
('Wah', 'PAK', 'Punjab', 198400),
('Dera Ghazi Khan', 'PAK', 'Punjab', 188100),
('Mirpur Khas', 'PAK', 'Sind', 184500),
('Nawabshah', 'PAK', 'Sind', 183100),
('Mingora', 'PAK', 'Nothwest Border Prov', 174500),
('Chiniot', 'PAK', 'Punjab', 169300),
('Kamoke', 'PAK', 'Punjab', 151000),
('Mandi Burewala', 'PAK', 'Punjab', 149900),
('Jhelum', 'PAK', 'Punjab', 145800),
('Sadiqabad', 'PAK', 'Punjab', 141500),
('Jacobabad', 'PAK', 'Sind', 137700),
('Shikarpur', 'PAK', 'Sind', 133300),
('Khanewal', 'PAK', 'Punjab', 133000),
('Hafizabad', 'PAK', 'Punjab', 130200),
('Kohat', 'PAK', 'Nothwest Border Prov', 125300),
('Muzaffargarh', 'PAK', 'Punjab', 121600),
('Khanpur', 'PAK', 'Punjab', 117800),
('Gojra', 'PAK', 'Punjab', 115000),
('Bahawalnagar', 'PAK', 'Punjab', 109600),
('Muridke', 'PAK', 'Punjab', 108600),
('Pak Pattan', 'PAK', 'Punjab', 107800),
('Abottabad', 'PAK', 'Nothwest Border Prov', 106000),
('Tando Adam', 'PAK', 'Sind', 103400),
('Jaranwala', 'PAK', 'Punjab', 103300),
('Khairpur', 'PAK', 'Sind', 102200),
('Chishtian Mandi', 'PAK', 'Punjab', 101700),
('Daska', 'PAK', 'Punjab', 101500),
('Dadu', 'PAK', 'Sind', 98600),
('Mandi Bahauddin', 'PAK', 'Punjab', 97300),
('Ahmadpur East', 'PAK', 'Punjab', 96000),
('Kamalia', 'PAK', 'Punjab', 95300),
('Khuzdar', 'PAK', 'Baluchistan', 93100),
('Vihari', 'PAK', 'Punjab', 92300),
('Dera Ismail Khan', 'PAK', 'Nothwest Border Prov', 90400),
('Wazirabad', 'PAK', 'Punjab', 89700),
('Nowshera', 'PAK', 'Nothwest Border Prov', 89400),
('Koror', 'PLW', 'Koror', 12000),
('Ciudad de Panamá', 'PAN', 'Panamá', 471373),
('San Miguelito', 'PAN', 'San Miguelito', 315382),
('Port Moresby', 'PNG', 'National Capital Dis', 247000),
('Asunción', 'PRY', 'Asunción', 557776),
('Ciudad del Este', 'PRY', 'Alto Paraná', 133881),
('San Lorenzo', 'PRY', 'Central', 133395),
('Lambaré', 'PRY', 'Central', 99681),
('Fernando de la Mora', 'PRY', 'Central', 95287),
('Lima', 'PER', 'Lima', 6464693),
('Arequipa', 'PER', 'Arequipa', 762000),
('Trujillo', 'PER', 'La Libertad', 652000),
('Chiclayo', 'PER', 'Lambayeque', 517000),
('Callao', 'PER', 'Callao', 424294),
('Iquitos', 'PER', 'Loreto', 367000),
('Chimbote', 'PER', 'Ancash', 336000),
('Huancayo', 'PER', 'Junín', 327000),
('Piura', 'PER', 'Piura', 325000),
('Cusco', 'PER', 'Cusco', 291000),
('Pucallpa', 'PER', 'Ucayali', 220866),
('Tacna', 'PER', 'Tacna', 215683),
('Ica', 'PER', 'Ica', 194820),
('Sullana', 'PER', 'Piura', 147361),
('Juliaca', 'PER', 'Puno', 142576),
('Huánuco', 'PER', 'Huanuco', 129688),
('Ayacucho', 'PER', 'Ayacucho', 118960),
('Chincha Alta', 'PER', 'Ica', 110016),
('Cajamarca', 'PER', 'Cajamarca', 108009),
('Puno', 'PER', 'Puno', 101578),
('Ventanilla', 'PER', 'Callao', 101056),
('Castilla', 'PER', 'Piura', 90642),
('Adamstown', 'PCN', '', 42),
('Garapan', 'MNP', 'Saipan', 9200),
('Lisboa', 'PRT', 'Lisboa', 563210),
('Porto', 'PRT', 'Porto', 273060),
('Amadora', 'PRT', 'Lisboa', 122106),
('Coímbra', 'PRT', 'Coímbra', 96100),
('Braga', 'PRT', 'Braga', 90535),
('San Juan', 'PRI', 'San Juan', 434374),
('Bayamón', 'PRI', 'Bayamón', 224044),
('Ponce', 'PRI', 'Ponce', 186475),
('Carolina', 'PRI', 'Carolina', 186076),
('Caguas', 'PRI', 'Caguas', 140502),
('Arecibo', 'PRI', 'Arecibo', 100131),
('Guaynabo', 'PRI', 'Guaynabo', 100053),
('Mayagüez', 'PRI', 'Mayagüez', 98434),
('Toa Baja', 'PRI', 'Toa Baja', 94085),
('Warszawa', 'POL', 'Mazowieckie', 1615369),
('Lódz', 'POL', 'Lodzkie', 800110),
('Kraków', 'POL', 'Malopolskie', 738150),
('Wroclaw', 'POL', 'Dolnoslaskie', 636765),
('Poznan', 'POL', 'Wielkopolskie', 576899),
('Gdansk', 'POL', 'Pomorskie', 458988),
('Szczecin', 'POL', 'Zachodnio-Pomorskie', 416988),
('Bydgoszcz', 'POL', 'Kujawsko-Pomorskie', 386855),
('Lublin', 'POL', 'Lubelskie', 356251),
('Katowice', 'POL', 'Slaskie', 345934),
('Bialystok', 'POL', 'Podlaskie', 283937),
('Czestochowa', 'POL', 'Slaskie', 257812),
('Gdynia', 'POL', 'Pomorskie', 253521),
('Sosnowiec', 'POL', 'Slaskie', 244102),
('Radom', 'POL', 'Mazowieckie', 232262),
('Kielce', 'POL', 'Swietokrzyskie', 212383),
('Gliwice', 'POL', 'Slaskie', 212164),
('Torun', 'POL', 'Kujawsko-Pomorskie', 206158),
('Bytom', 'POL', 'Slaskie', 205560),
('Zabrze', 'POL', 'Slaskie', 200177),
('Bielsko-Biala', 'POL', 'Slaskie', 180307),
('Olsztyn', 'POL', 'Warminsko-Mazurskie', 170904),
('Rzeszów', 'POL', 'Podkarpackie', 162049),
('Ruda Slaska', 'POL', 'Slaskie', 159665),
('Rybnik', 'POL', 'Slaskie', 144582),
('Walbrzych', 'POL', 'Dolnoslaskie', 136923),
('Tychy', 'POL', 'Slaskie', 133178),
('Dabrowa Górnicza', 'POL', 'Slaskie', 131037),
('Plock', 'POL', 'Mazowieckie', 131011),
('Elblag', 'POL', 'Warminsko-Mazurskie', 129782),
('Opole', 'POL', 'Opolskie', 129553),
('Gorzów Wielkopolski', 'POL', 'Lubuskie', 126019),
('Wloclawek', 'POL', 'Kujawsko-Pomorskie', 123373),
('Chorzów', 'POL', 'Slaskie', 121708),
('Tarnów', 'POL', 'Malopolskie', 121494),
('Zielona Góra', 'POL', 'Lubuskie', 118182),
('Koszalin', 'POL', 'Zachodnio-Pomorskie', 112375),
('Legnica', 'POL', 'Dolnoslaskie', 109335),
('Kalisz', 'POL', 'Wielkopolskie', 106641),
('Grudziadz', 'POL', 'Kujawsko-Pomorskie', 102434),
('Slupsk', 'POL', 'Pomorskie', 102370),
('Jastrzebie-Zdrój', 'POL', 'Slaskie', 102294),
('Jaworzno', 'POL', 'Slaskie', 97929),
('Jelenia Góra', 'POL', 'Dolnoslaskie', 93901),
('Malabo', 'GNQ', 'Bioko', 40000),
('Doha', 'QAT', 'Doha', 355000),
('Paris', 'FRA', 'Île-de-France', 2125246),
('Marseille', 'FRA', 'Provence-Alpes-Côte', 798430),
('Lyon', 'FRA', 'Rhône-Alpes', 445452),
('Toulouse', 'FRA', 'Midi-Pyrénées', 390350),
('Nice', 'FRA', 'Provence-Alpes-Côte', 342738),
('Nantes', 'FRA', 'Pays de la Loire', 270251),
('Strasbourg', 'FRA', 'Alsace', 264115),
('Montpellier', 'FRA', 'Languedoc-Roussillon', 225392),
('Bordeaux', 'FRA', 'Aquitaine', 215363),
('Rennes', 'FRA', 'Haute-Normandie', 206229),
('Le Havre', 'FRA', 'Champagne-Ardenne', 190905),
('Reims', 'FRA', 'Nord-Pas-de-Calais', 187206),
('Lille', 'FRA', 'Rhône-Alpes', 184657),
('St-Étienne', 'FRA', 'Bretagne', 180210),
('Toulon', 'FRA', 'Provence-Alpes-Côte', 160639),
('Grenoble', 'FRA', 'Rhône-Alpes', 153317),
('Angers', 'FRA', 'Pays de la Loire', 151279),
('Dijon', 'FRA', 'Bourgogne', 149867),
('Brest', 'FRA', 'Bretagne', 149634),
('Le Mans', 'FRA', 'Pays de la Loire', 146105),
('Clermont-Ferrand', 'FRA', 'Auvergne', 137140),
('Amiens', 'FRA', 'Picardie', 135501),
('Aix-en-Provence', 'FRA', 'Provence-Alpes-Côte', 134222),
('Limoges', 'FRA', 'Limousin', 133968),
('Nîmes', 'FRA', 'Languedoc-Roussillon', 133424),
('Tours', 'FRA', 'Centre', 132820),
('Villeurbanne', 'FRA', 'Rhône-Alpes', 124215),
('Metz', 'FRA', 'Lorraine', 123776),
('Besançon', 'FRA', 'Franche-Comté', 117733),
('Caen', 'FRA', 'Basse-Normandie', 113987),
('Orléans', 'FRA', 'Centre', 113126),
('Mulhouse', 'FRA', 'Alsace', 110359),
('Rouen', 'FRA', 'Haute-Normandie', 106592),
('Boulogne-Billancourt', 'FRA', 'Île-de-France', 106367),
('Perpignan', 'FRA', 'Languedoc-Roussillon', 105115),
('Nancy', 'FRA', 'Lorraine', 103605),
('Roubaix', 'FRA', 'Nord-Pas-de-Calais', 96984),
('Argenteuil', 'FRA', 'Île-de-France', 93961),
('Tourcoing', 'FRA', 'Nord-Pas-de-Calais', 93540),
('Montreuil', 'FRA', 'Île-de-France', 90674),
('Cayenne', 'GUF', 'Cayenne', 50699),
('Faaa', 'PYF', 'Tahiti', 25888),
('Papeete', 'PYF', 'Tahiti', 25553),
('Saint-Denis', 'REU', 'Saint-Denis', 131480),
('Bucuresti', 'ROM', 'Bukarest', 2016131),
('Iasi', 'ROM', 'Iasi', 348070),
('Constanta', 'ROM', 'Constanta', 342264),
('Cluj-Napoca', 'ROM', 'Cluj', 332498),
('Galati', 'ROM', 'Galati', 330276),
('Timisoara', 'ROM', 'Timis', 324304),
('Brasov', 'ROM', 'Brasov', 314225),
('Craiova', 'ROM', 'Dolj', 313530),
('Ploiesti', 'ROM', 'Prahova', 251348),
('Braila', 'ROM', 'Braila', 233756),
('Oradea', 'ROM', 'Bihor', 222239),
('Bacau', 'ROM', 'Bacau', 209235),
('Pitesti', 'ROM', 'Arges', 187170),
('Arad', 'ROM', 'Arad', 184408),
('Sibiu', 'ROM', 'Sibiu', 169611),
('Târgu Mures', 'ROM', 'Mures', 165153),
('Baia Mare', 'ROM', 'Maramures', 149665),
('Buzau', 'ROM', 'Buzau', 148372),
('Satu Mare', 'ROM', 'Satu Mare', 130059),
('Botosani', 'ROM', 'Botosani', 128730),
('Piatra Neamt', 'ROM', 'Neamt', 125070),
('Râmnicu Vâlcea', 'ROM', 'Vâlcea', 119741),
('Suceava', 'ROM', 'Suceava', 118549),
('Drobeta-Turnu Severin', 'ROM', 'Mehedinti', 117865),
('Târgoviste', 'ROM', 'Dâmbovita', 98980),
('Focsani', 'ROM', 'Vrancea', 98979),
('Târgu Jiu', 'ROM', 'Gorj', 98524),
('Tulcea', 'ROM', 'Tulcea', 96278),
('Resita', 'ROM', 'Caras-Severin', 93976),
('Kigali', 'RWA', 'Kigali', 286000),
('Stockholm', 'SWE', 'Lisboa', 750348),
('Gothenburg [Göteborg]', 'SWE', 'West Götanmaan län', 466990),
('Malmö', 'SWE', 'Skåne län', 259579),
('Uppsala', 'SWE', 'Uppsala län', 189569),
('Linköping', 'SWE', 'East Götanmaan län', 133168),
('Västerås', 'SWE', 'Västmanlands län', 126328),
('Örebro', 'SWE', 'Örebros län', 124207),
('Norrköping', 'SWE', 'East Götanmaan län', 122199),
('Helsingborg', 'SWE', 'Skåne län', 117737),
('Jönköping', 'SWE', 'Jönköpings län', 117095),
('Umeå', 'SWE', 'Västerbottens län', 104512),
('Lund', 'SWE', 'Skåne län', 98948),
('Borås', 'SWE', 'West Götanmaan län', 96883),
('Sundsvall', 'SWE', 'Västernorrlands län', 93126),
('Gävle', 'SWE', 'Gävleborgs län', 90742),
('Jamestown', 'SHN', 'Saint Helena', 1500),
('Basseterre', 'KNA', 'St George Basseterre', 11600),
('Castries', 'LCA', 'Castries', 2301),
('Kingstown', 'VCT', 'St George', 17100),
('Saint-Pierre', 'SPM', 'Saint-Pierre', 5808),
('Berlin', 'DEU', 'Berliini', 3386667),
('Hamburg', 'DEU', 'Hamburg', 1704735),
('Munich [München]', 'DEU', 'Baijeri', 1194560),
('Köln', 'DEU', 'Nordrhein-Westfalen', 962507),
('Frankfurt am Main', 'DEU', 'Hessen', 643821),
('Essen', 'DEU', 'Nordrhein-Westfalen', 599515),
('Dortmund', 'DEU', 'Nordrhein-Westfalen', 590213),
('Stuttgart', 'DEU', 'Baden-Württemberg', 582443),
('Düsseldorf', 'DEU', 'Nordrhein-Westfalen', 568855),
('Bremen', 'DEU', 'Bremen', 540330),
('Duisburg', 'DEU', 'Nordrhein-Westfalen', 519793),
('Hannover', 'DEU', 'Niedersachsen', 514718),
('Leipzig', 'DEU', 'Saksi', 489532),
('Nürnberg', 'DEU', 'Baijeri', 486628),
('Dresden', 'DEU', 'Saksi', 476668),
('Bochum', 'DEU', 'Nordrhein-Westfalen', 392830),
('Wuppertal', 'DEU', 'Nordrhein-Westfalen', 368993),
('Bielefeld', 'DEU', 'Nordrhein-Westfalen', 321125),
('Mannheim', 'DEU', 'Baden-Württemberg', 307730),
('Bonn', 'DEU', 'Nordrhein-Westfalen', 301048),
('Gelsenkirchen', 'DEU', 'Nordrhein-Westfalen', 281979),
('Karlsruhe', 'DEU', 'Baden-Württemberg', 277204),
('Wiesbaden', 'DEU', 'Hessen', 268716),
('Münster', 'DEU', 'Nordrhein-Westfalen', 264670),
('Mönchengladbach', 'DEU', 'Nordrhein-Westfalen', 263697),
('Chemnitz', 'DEU', 'Saksi', 263222),
('Augsburg', 'DEU', 'Baijeri', 254867),
('Halle/Saale', 'DEU', 'Anhalt Sachsen', 254360),
('Braunschweig', 'DEU', 'Niedersachsen', 246322),
('Aachen', 'DEU', 'Nordrhein-Westfalen', 243825),
('Krefeld', 'DEU', 'Nordrhein-Westfalen', 241769),
('Magdeburg', 'DEU', 'Anhalt Sachsen', 235073),
('Kiel', 'DEU', 'Schleswig-Holstein', 233795),
('Oberhausen', 'DEU', 'Nordrhein-Westfalen', 222349),
('Lübeck', 'DEU', 'Schleswig-Holstein', 213326),
('Hagen', 'DEU', 'Nordrhein-Westfalen', 205201),
('Rostock', 'DEU', 'Mecklenburg-Vorpomme', 203279),
('Freiburg im Breisgau', 'DEU', 'Baden-Württemberg', 202455),
('Erfurt', 'DEU', 'Thüringen', 201267),
('Kassel', 'DEU', 'Hessen', 196211),
('Saarbrücken', 'DEU', 'Saarland', 183836),
('Mainz', 'DEU', 'Rheinland-Pfalz', 183134),
('Hamm', 'DEU', 'Nordrhein-Westfalen', 181804),
('Herne', 'DEU', 'Nordrhein-Westfalen', 175661),
('Mülheim an der Ruhr', 'DEU', 'Nordrhein-Westfalen', 173895),
('Solingen', 'DEU', 'Nordrhein-Westfalen', 165583),
('Osnabrück', 'DEU', 'Niedersachsen', 164539),
('Ludwigshafen am Rhein', 'DEU', 'Rheinland-Pfalz', 163771),
('Leverkusen', 'DEU', 'Nordrhein-Westfalen', 160841),
('Oldenburg', 'DEU', 'Niedersachsen', 154125),
('Neuss', 'DEU', 'Nordrhein-Westfalen', 149702),
('Heidelberg', 'DEU', 'Baden-Württemberg', 139672),
('Darmstadt', 'DEU', 'Hessen', 137776),
('Paderborn', 'DEU', 'Nordrhein-Westfalen', 137647),
('Potsdam', 'DEU', 'Brandenburg', 128983),
('Würzburg', 'DEU', 'Baijeri', 127350),
('Regensburg', 'DEU', 'Baijeri', 125236),
('Recklinghausen', 'DEU', 'Nordrhein-Westfalen', 125022),
('Göttingen', 'DEU', 'Niedersachsen', 124775),
('Bremerhaven', 'DEU', 'Bremen', 122735),
('Wolfsburg', 'DEU', 'Niedersachsen', 121954),
('Bottrop', 'DEU', 'Nordrhein-Westfalen', 121097),
('Remscheid', 'DEU', 'Nordrhein-Westfalen', 120125),
('Heilbronn', 'DEU', 'Baden-Württemberg', 119526),
('Pforzheim', 'DEU', 'Baden-Württemberg', 117227),
('Offenbach am Main', 'DEU', 'Hessen', 116627),
('Ulm', 'DEU', 'Baden-Württemberg', 116103),
('Ingolstadt', 'DEU', 'Baijeri', 114826),
('Gera', 'DEU', 'Thüringen', 114718),
('Salzgitter', 'DEU', 'Niedersachsen', 112934),
('Cottbus', 'DEU', 'Brandenburg', 110894),
('Reutlingen', 'DEU', 'Baden-Württemberg', 110343),
('Fürth', 'DEU', 'Baijeri', 109771),
('Siegen', 'DEU', 'Nordrhein-Westfalen', 109225),
('Koblenz', 'DEU', 'Rheinland-Pfalz', 108003),
('Moers', 'DEU', 'Nordrhein-Westfalen', 106837),
('Bergisch Gladbach', 'DEU', 'Nordrhein-Westfalen', 106150),
('Zwickau', 'DEU', 'Saksi', 104146),
('Hildesheim', 'DEU', 'Niedersachsen', 104013),
('Witten', 'DEU', 'Nordrhein-Westfalen', 103384),
('Schwerin', 'DEU', 'Mecklenburg-Vorpomme', 102878),
('Erlangen', 'DEU', 'Baijeri', 100750),
('Kaiserslautern', 'DEU', 'Rheinland-Pfalz', 100025),
('Trier', 'DEU', 'Rheinland-Pfalz', 99891),
('Jena', 'DEU', 'Thüringen', 99779),
('Iserlohn', 'DEU', 'Nordrhein-Westfalen', 99474),
('Gütersloh', 'DEU', 'Nordrhein-Westfalen', 95028),
('Marl', 'DEU', 'Nordrhein-Westfalen', 93735),
('Lünen', 'DEU', 'Nordrhein-Westfalen', 92044),
('Düren', 'DEU', 'Nordrhein-Westfalen', 91092),
('Ratingen', 'DEU', 'Nordrhein-Westfalen', 90951),
('Velbert', 'DEU', 'Nordrhein-Westfalen', 89881),
('Esslingen am Neckar', 'DEU', 'Baden-Württemberg', 89667),
('Honiara', 'SLB', 'Honiara', 50100),
('Lusaka', 'ZMB', 'Lusaka', 1317000),
('Ndola', 'ZMB', 'Copperbelt', 329200),
('Kitwe', 'ZMB', 'Copperbelt', 288600),
('Kabwe', 'ZMB', 'Central', 154300),
('Chingola', 'ZMB', 'Copperbelt', 142400),
('Mufulira', 'ZMB', 'Copperbelt', 123900),
('Luanshya', 'ZMB', 'Copperbelt', 118100),
('Apia', 'WSM', 'Upolu', 35900),
('Serravalle', 'SMR', 'Serravalle/Dogano', 4802),
('San Marino', 'SMR', 'San Marino', 2294),
('São Tomé', 'STP', 'Aqua Grande', 49541),
('Riyadh', 'SAU', 'Riyadh', 3324000),
('Jedda', 'SAU', 'Mekka', 2046300),
('Mekka', 'SAU', 'Mekka', 965700),
('Medina', 'SAU', 'Medina', 608300),
('al-Dammam', 'SAU', 'al-Sharqiya', 482300),
('al-Taif', 'SAU', 'Mekka', 416100),
('Tabuk', 'SAU', 'Tabuk', 292600),
('Burayda', 'SAU', 'al-Qasim', 248600),
('al-Hufuf', 'SAU', 'al-Sharqiya', 225800),
('al-Mubarraz', 'SAU', 'al-Sharqiya', 219100),
('Khamis Mushayt', 'SAU', 'Asir', 217900),
('Hail', 'SAU', 'Hail', 176800),
('al-Kharj', 'SAU', 'Riad', 152100),
('al-Khubar', 'SAU', 'al-Sharqiya', 141700),
('Jubayl', 'SAU', 'al-Sharqiya', 140800),
('Hafar al-Batin', 'SAU', 'al-Sharqiya', 137800),
('al-Tuqba', 'SAU', 'al-Sharqiya', 125700),
('Yanbu', 'SAU', 'Medina', 119800),
('Abha', 'SAU', 'Asir', 112300),
('Ara´ar', 'SAU', 'al-Khudud al-Samaliy', 108100),
('al-Qatif', 'SAU', 'al-Sharqiya', 98900),
('al-Hawiya', 'SAU', 'Mekka', 93900),
('Unayza', 'SAU', 'Qasim', 91100),
('Najran', 'SAU', 'Najran', 91000),
('Pikine', 'SEN', 'Cap-Vert', 855287),
('Dakar', 'SEN', 'Cap-Vert', 785071),
('Thiès', 'SEN', 'Thiès', 248000),
('Kaolack', 'SEN', 'Kaolack', 199000),
('Ziguinchor', 'SEN', 'Ziguinchor', 192000),
('Rufisque', 'SEN', 'Cap-Vert', 150000),
('Saint-Louis', 'SEN', 'Saint-Louis', 132400),
('Mbour', 'SEN', 'Thiès', 109300),
('Diourbel', 'SEN', 'Diourbel', 99400),
('Victoria', 'SYC', 'Mahé', 41000),
('Freetown', 'SLE', 'Western', 850000),
('Singapore', 'SGP', '', 4017733),
('Bratislava', 'SVK', 'Bratislava', 448292),
('Koice', 'SVK', 'Východné Slovensko', 241874),
('Preov', 'SVK', 'Východné Slovensko', 93977),
('Ljubljana', 'SVN', 'Osrednjeslovenska', 270986),
('Maribor', 'SVN', 'Podravska', 115532),
('Mogadishu', 'SOM', 'Banaadir', 997000),
('Hargeysa', 'SOM', 'Woqooyi Galbeed', 90000),
('Kismaayo', 'SOM', 'Jubbada Hoose', 90000),
('Colombo', 'LKA', 'Western', 645000),
('Dehiwala', 'LKA', 'Western', 203000),
('Moratuwa', 'LKA', 'Western', 190000),
('Jaffna', 'LKA', 'Northern', 149000),
('Kandy', 'LKA', 'Central', 140000),
('Sri Jayawardenepura Kotte', 'LKA', 'Western', 118000),
('Negombo', 'LKA', 'Western', 100000),
('Omdurman', 'SDN', 'Khartum', 1271403),
('Khartum', 'SDN', 'Khartum', 947483),
('Sharq al-Nil', 'SDN', 'Khartum', 700887),
('Port Sudan', 'SDN', 'al-Bahr al-Ahmar', 308195),
('Kassala', 'SDN', 'Kassala', 234622),
('Obeid', 'SDN', 'Kurdufan al-Shamaliy', 229425),
('Nyala', 'SDN', 'Darfur al-Janubiya', 227183),
('Wad Madani', 'SDN', 'al-Jazira', 211362),
('al-Qadarif', 'SDN', 'al-Qadarif', 191164),
('Kusti', 'SDN', 'al-Bahr al-Abyad', 173599),
('al-Fashir', 'SDN', 'Darfur al-Shamaliya', 141884),
('Juba', 'SDN', 'Bahr al-Jabal', 114980),
('Helsinki [Helsingfors]', 'FIN', 'Newmaa', 555474),
('Espoo', 'FIN', 'Newmaa', 213271),
('Tampere', 'FIN', 'Pirkanmaa', 195468),
('Vantaa', 'FIN', 'Newmaa', 178471),
('Turku [Åbo]', 'FIN', 'Varsinais-Suomi', 172561),
('Oulu', 'FIN', 'Pohjois-Pohjanmaa', 120753),
('Lahti', 'FIN', 'Päijät-Häme', 96921),
('Paramaribo', 'SUR', 'Paramaribo', 112000),
('Mbabane', 'SWZ', 'Hhohho', 61000),
('Zürich', 'CHE', 'Zürich', 336800),
('Geneve', 'CHE', 'Geneve', 173500),
('Basel', 'CHE', 'Basel-Stadt', 166700),
('Bern', 'CHE', 'Bern', 122700),
('Lausanne', 'CHE', 'Vaud', 114500),
('Damascus', 'SYR', 'Damascus', 1347000),
('Aleppo', 'SYR', 'Aleppo', 1261983),
('Hims', 'SYR', 'Hims', 507404),
('Hama', 'SYR', 'Hama', 343361),
('Latakia', 'SYR', 'Latakia', 264563),
('al-Qamishliya', 'SYR', 'al-Hasaka', 144286),
('Dayr al-Zawr', 'SYR', 'Dayr al-Zawr', 140459),
('Jaramana', 'SYR', 'Damaskos', 138469),
('Duma', 'SYR', 'Damaskos', 131158),
('al-Raqqa', 'SYR', 'al-Raqqa', 108020),
('Idlib', 'SYR', 'Idlib', 91081),
('Dushanbe', 'TJK', 'Karotegin', 524000),
('Khujand', 'TJK', 'Khujand', 161500),
('Taipei', 'TWN', 'Taipei', 2641312),
('Kaohsiung', 'TWN', 'Kaohsiung', 1475505),
('Taichung', 'TWN', 'Taichung', 940589),
('Tainan', 'TWN', 'Tainan', 728060),
('Panchiao', 'TWN', 'Taipei', 523850),
('Chungho', 'TWN', 'Taipei', 392176),
('Keelung (Chilung)', 'TWN', 'Keelung', 385201),
('Sanchung', 'TWN', 'Taipei', 380084),
('Hsinchuang', 'TWN', 'Taipei', 365048),
('Hsinchu', 'TWN', 'Hsinchu', 361958),
('Chungli', 'TWN', 'Taoyuan', 318649),
('Fengshan', 'TWN', 'Kaohsiung', 318562),
('Taoyuan', 'TWN', 'Taoyuan', 316438),
('Chiayi', 'TWN', 'Chiayi', 265109),
('Hsintien', 'TWN', 'Taipei', 263603),
('Changhwa', 'TWN', 'Changhwa', 227715),
('Yungho', 'TWN', 'Taipei', 227700),
('Tucheng', 'TWN', 'Taipei', 224897),
('Pingtung', 'TWN', 'Pingtung', 214727),
('Yungkang', 'TWN', 'Tainan', 193005),
('Pingchen', 'TWN', 'Taoyuan', 188344),
('Tali', 'TWN', 'Taichung', 171940),
('Taiping', 'TWN', '', 165524),
('Pate', 'TWN', 'Taoyuan', 161700),
('Fengyuan', 'TWN', 'Taichung', 161032),
('Luchou', 'TWN', 'Taipei', 160516),
('Hsichuh', 'TWN', 'Taipei', 154976),
('Shulin', 'TWN', 'Taipei', 151260),
('Yuanlin', 'TWN', 'Changhwa', 126402),
('Yangmei', 'TWN', 'Taoyuan', 126323),
('Taliao', 'TWN', '', 115897),
('Kueishan', 'TWN', '', 112195),
('Tanshui', 'TWN', 'Taipei', 111882),
('Taitung', 'TWN', 'Taitung', 111039),
('Hualien', 'TWN', 'Hualien', 108407),
('Nantou', 'TWN', 'Nantou', 104723),
('Lungtan', 'TWN', 'Taipei', 103088),
('Touliu', 'TWN', 'Yünlin', 98900),
('Tsaotun', 'TWN', 'Nantou', 96800),
('Kangshan', 'TWN', 'Kaohsiung', 92200),
('Ilan', 'TWN', 'Ilan', 92000),
('Miaoli', 'TWN', 'Miaoli', 90000),
('Dar es Salaam', 'TZA', 'Dar es Salaam', 1747000),
('Dodoma', 'TZA', 'Dodoma', 189000),
('Mwanza', 'TZA', 'Mwanza', 172300),
('Zanzibar', 'TZA', 'Zanzibar West', 157634),
('Tanga', 'TZA', 'Tanga', 137400),
('Mbeya', 'TZA', 'Mbeya', 130800),
('Morogoro', 'TZA', 'Morogoro', 117800),
('Arusha', 'TZA', 'Arusha', 102500),
('Moshi', 'TZA', 'Kilimanjaro', 96800),
('Tabora', 'TZA', 'Tabora', 92800),
('København', 'DNK', 'København', 495699),
('Århus', 'DNK', 'Århus', 284846),
('Odense', 'DNK', 'Fyn', 183912),
('Aalborg', 'DNK', 'Nordjylland', 161161),
('Frederiksberg', 'DNK', 'Frederiksberg', 90327),
('Bangkok', 'THA', 'Bangkok', 6320174),
('Nonthaburi', 'THA', 'Nonthaburi', 292100),
('Nakhon Ratchasima', 'THA', 'Nakhon Ratchasima', 181400),
('Chiang Mai', 'THA', 'Chiang Mai', 171100),
('Udon Thani', 'THA', 'Udon Thani', 158100),
('Hat Yai', 'THA', 'Songkhla', 148632),
('Khon Kaen', 'THA', 'Khon Kaen', 126500),
('Pak Kret', 'THA', 'Nonthaburi', 126055),
('Nakhon Sawan', 'THA', 'Nakhon Sawan', 123800),
('Ubon Ratchathani', 'THA', 'Ubon Ratchathani', 116300),
('Songkhla', 'THA', 'Songkhla', 94900),
('Nakhon Pathom', 'THA', 'Nakhon Pathom', 94100),
('Lomé', 'TGO', 'Maritime', 375000),
('Fakaofo', 'TKL', 'Fakaofo', 300),
('Nuku´alofa', 'TON', 'Tongatapu', 22400),
('Chaguanas', 'TTO', 'Caroni', 56601),
('Port-of-Spain', 'TTO', 'Port-of-Spain', 43396),
('N´Djaména', 'TCD', 'Chari-Baguirmi', 530965),
('Moundou', 'TCD', 'Logone Occidental', 99500),
('Praha', 'CZE', 'Hlavní mesto Praha', 1181126),
('Brno', 'CZE', 'Jizní Morava', 381862),
('Ostrava', 'CZE', 'Severní Morava', 320041),
('Plzen', 'CZE', 'Zapadní Cechy', 166759),
('Olomouc', 'CZE', 'Severní Morava', 102702),
('Liberec', 'CZE', 'Severní Cechy', 99155),
('Ceské Budejovice', 'CZE', 'Jizní Cechy', 98186),
('Hradec Králové', 'CZE', 'Východní Cechy', 98080),
('Ústí nad Labem', 'CZE', 'Severní Cechy', 95491),
('Pardubice', 'CZE', 'Východní Cechy', 91309),
('Tunis', 'TUN', 'Tunis', 690600),
('Sfax', 'TUN', 'Sfax', 257800),
('Ariana', 'TUN', 'Ariana', 197000),
('Ettadhamen', 'TUN', 'Ariana', 178600),
('Sousse', 'TUN', 'Sousse', 145900),
('Kairouan', 'TUN', 'Kairouan', 113100),
('Biserta', 'TUN', 'Biserta', 108900),
('Gabès', 'TUN', 'Gabès', 106600),
('Istanbul', 'TUR', 'Istanbul', 8787958),
('Ankara', 'TUR', 'Ankara', 3038159),
('Izmir', 'TUR', 'Izmir', 2130359),
('Adana', 'TUR', 'Adana', 1131198),
('Bursa', 'TUR', 'Bursa', 1095842),
('Gaziantep', 'TUR', 'Gaziantep', 789056),
('Konya', 'TUR', 'Konya', 628364),
('Mersin (Içel)', 'TUR', 'Içel', 587212),
('Antalya', 'TUR', 'Antalya', 564914),
('Diyarbakir', 'TUR', 'Diyarbakir', 479884),
('Kayseri', 'TUR', 'Kayseri', 475657),
('Eskisehir', 'TUR', 'Eskisehir', 470781),
('Sanliurfa', 'TUR', 'Sanliurfa', 405905),
('Samsun', 'TUR', 'Samsun', 339871),
('Malatya', 'TUR', 'Malatya', 330312),
('Gebze', 'TUR', 'Kocaeli', 264170),
('Denizli', 'TUR', 'Denizli', 253848),
('Sivas', 'TUR', 'Sivas', 246642),
('Erzurum', 'TUR', 'Erzurum', 246535),
('Tarsus', 'TUR', 'Adana', 246206),
('Kahramanmaras', 'TUR', 'Kahramanmaras', 245772),
('Elâzig', 'TUR', 'Elâzig', 228815),
('Van', 'TUR', 'Van', 219319),
('Sultanbeyli', 'TUR', 'Istanbul', 211068),
('Izmit (Kocaeli)', 'TUR', 'Kocaeli', 210068),
('Manisa', 'TUR', 'Manisa', 207148),
('Batman', 'TUR', 'Batman', 203793),
('Balikesir', 'TUR', 'Balikesir', 196382),
('Sakarya (Adapazari)', 'TUR', 'Sakarya', 190641),
('Iskenderun', 'TUR', 'Hatay', 153022),
('Osmaniye', 'TUR', 'Osmaniye', 146003),
('Çorum', 'TUR', 'Çorum', 145495),
('Kütahya', 'TUR', 'Kütahya', 144761),
('Hatay (Antakya)', 'TUR', 'Hatay', 143982),
('Kirikkale', 'TUR', 'Kirikkale', 142044),
('Adiyaman', 'TUR', 'Adiyaman', 141529),
('Trabzon', 'TUR', 'Trabzon', 138234),
('Ordu', 'TUR', 'Ordu', 133642),
('Aydin', 'TUR', 'Aydin', 128651),
('Usak', 'TUR', 'Usak', 128162),
('Edirne', 'TUR', 'Edirne', 123383),
('Çorlu', 'TUR', 'Tekirdag', 123300),
('Isparta', 'TUR', 'Isparta', 121911),
('Karabük', 'TUR', 'Karabük', 118285),
('Kilis', 'TUR', 'Kilis', 118245),
('Alanya', 'TUR', 'Antalya', 117300),
('Kiziltepe', 'TUR', 'Mardin', 112000),
('Zonguldak', 'TUR', 'Zonguldak', 111542),
('Siirt', 'TUR', 'Siirt', 107100),
('Viransehir', 'TUR', 'Sanliurfa', 106400),
('Tekirdag', 'TUR', 'Tekirdag', 106077),
('Karaman', 'TUR', 'Karaman', 104200),
('Afyon', 'TUR', 'Afyon', 103984),
('Aksaray', 'TUR', 'Aksaray', 102681),
('Ceyhan', 'TUR', 'Adana', 102412),
('Erzincan', 'TUR', 'Erzincan', 102304),
('Bismil', 'TUR', 'Diyarbakir', 101400),
('Nazilli', 'TUR', 'Aydin', 99900),
('Tokat', 'TUR', 'Tokat', 99500),
('Kars', 'TUR', 'Kars', 93000),
('Inegöl', 'TUR', 'Bursa', 90500),
('Bandirma', 'TUR', 'Balikesir', 90200),
('Ashgabat', 'TKM', 'Ahal', 540600),
('Chärjew', 'TKM', 'Lebap', 189200),
('Dashhowuz', 'TKM', 'Dashhowuz', 141800),
('Mary', 'TKM', 'Mary', 101000),
('Cockburn Town', 'TCA', 'Grand Turk', 4800),
('Funafuti', 'TUV', 'Funafuti', 4600),
('Kampala', 'UGA', 'Central', 890800),
('Kyiv', 'UKR', 'Kiova', 2624000),
('Harkova [Harkiv]', 'UKR', 'Harkova', 1500000),
('Dnipropetrovsk', 'UKR', 'Dnipropetrovsk', 1103000),
('Donetsk', 'UKR', 'Donetsk', 1050000),
('Odesa', 'UKR', 'Odesa', 1011000),
('Zaporizzja', 'UKR', 'Zaporizzja', 848000),
('Lviv', 'UKR', 'Lviv', 788000),
('Kryvyi Rig', 'UKR', 'Dnipropetrovsk', 703000),
('Mykolajiv', 'UKR', 'Mykolajiv', 508000),
('Mariupol', 'UKR', 'Donetsk', 490000),
('Lugansk', 'UKR', 'Lugansk', 469000),
('Vinnytsja', 'UKR', 'Vinnytsja', 391000),
('Makijivka', 'UKR', 'Donetsk', 384000),
('Herson', 'UKR', 'Herson', 353000),
('Sevastopol', 'UKR', 'Krim', 348000),
('Simferopol', 'UKR', 'Krim', 339000),
('Pultava [Poltava]', 'UKR', 'Pultava', 313000),
('Ternigiv', 'UKR', 'Ternigiv', 313000),
('Terkasy', 'UKR', 'Terkasy', 309000),
('Gorlivka', 'UKR', 'Donetsk', 299000),
('Zytomyr', 'UKR', 'Zytomyr', 297000),
('Sumy', 'UKR', 'Sumy', 294000),
('Dniprodzerzynsk', 'UKR', 'Dnipropetrovsk', 270000),
('Kirovograd', 'UKR', 'Kirovograd', 265000),
('Hmelnytskyi', 'UKR', 'Hmelnytskyi', 262000),
('Ternivtsi', 'UKR', 'Ternivtsi', 259000),
('Rivne', 'UKR', 'Rivne', 245000),
('Krementuk', 'UKR', 'Pultava', 239000),
('Ivano-Frankivsk', 'UKR', 'Ivano-Frankivsk', 237000),
('Ternopil', 'UKR', 'Ternopil', 236000),
('Lutsk', 'UKR', 'Volynia', 217000),
('Bila Tserkva', 'UKR', 'Kiova', 215000),
('Kramatorsk', 'UKR', 'Donetsk', 186000),
('Melitopol', 'UKR', 'Zaporizzja', 169000),
('Kert', 'UKR', 'Krim', 162000),
('Nikopol', 'UKR', 'Dnipropetrovsk', 149000),
('Berdjansk', 'UKR', 'Zaporizzja', 130000),
('Pavlograd', 'UKR', 'Dnipropetrovsk', 127000),
('Sjeverodonetsk', 'UKR', 'Lugansk', 127000),
('Slovjansk', 'UKR', 'Donetsk', 127000),
('Uzgorod', 'UKR', 'Taka-Karpatia', 127000),
('Altevsk', 'UKR', 'Lugansk', 119000),
('Lysytansk', 'UKR', 'Lugansk', 116000),
('Jevpatorija', 'UKR', 'Krim', 112000),
('Kamjanets-Podilskyi', 'UKR', 'Hmelnytskyi', 109000),
('Jenakijeve', 'UKR', 'Donetsk', 105000),
('Krasnyi Lut', 'UKR', 'Lugansk', 101000),
('Stahanov', 'UKR', 'Lugansk', 101000),
('Oleksandrija', 'UKR', 'Kirovograd', 99000),
('Konotop', 'UKR', 'Sumy', 96000),
('Kostjantynivka', 'UKR', 'Donetsk', 95000),
('Berdytiv', 'UKR', 'Zytomyr', 90000),
('Izmajil', 'UKR', 'Odesa', 90000),
('ostka', 'UKR', 'Sumy', 90000),
('Uman', 'UKR', 'Terkasy', 90000),
('Brovary', 'UKR', 'Kiova', 89000),
('Mukateve', 'UKR', 'Taka-Karpatia', 89000),
('Budapest', 'HUN', 'Budapest', 1811552),
('Debrecen', 'HUN', 'Hajdú-Bihar', 203648),
('Miskolc', 'HUN', 'Borsod-Abaúj-Zemplén', 172357),
('Szeged', 'HUN', 'Csongrád', 158158),
('Pécs', 'HUN', 'Baranya', 157332),
('Györ', 'HUN', 'Györ-Moson-Sopron', 127119),
('Nyiregyháza', 'HUN', 'Szabolcs-Szatmár-Ber', 112419),
('Kecskemét', 'HUN', 'Bács-Kiskun', 105606),
('Székesfehérvár', 'HUN', 'Fejér', 105119),
('Montevideo', 'URY', 'Montevideo', 1236000),
('Nouméa', 'NCL', '', 76293),
('Auckland', 'NZL', 'Auckland', 381800),
('Christchurch', 'NZL', 'Canterbury', 324200),
('Manukau', 'NZL', 'Auckland', 281800),
('North Shore', 'NZL', 'Auckland', 187700),
('Waitakere', 'NZL', 'Auckland', 170600),
('Wellington', 'NZL', 'Wellington', 166700),
('Dunedin', 'NZL', 'Dunedin', 119600),
('Hamilton', 'NZL', 'Hamilton', 117100),
('Lower Hutt', 'NZL', 'Wellington', 98100),
('Toskent', 'UZB', 'Toskent Shahri', 2117500),
('Namangan', 'UZB', 'Namangan', 370500),
('Samarkand', 'UZB', 'Samarkand', 361800),
('Andijon', 'UZB', 'Andijon', 318600),
('Buhoro', 'UZB', 'Buhoro', 237100),
('Karsi', 'UZB', 'Qashqadaryo', 194100),
('Nukus', 'UZB', 'Karakalpakistan', 194100),
('Kükon', 'UZB', 'Fargona', 190100),
('Fargona', 'UZB', 'Fargona', 180500),
('Circik', 'UZB', 'Toskent', 146400),
('Margilon', 'UZB', 'Fargona', 140800),
('Ürgenc', 'UZB', 'Khorazm', 138900),
('Angren', 'UZB', 'Toskent', 128000),
('Cizah', 'UZB', 'Cizah', 124800),
('Navoi', 'UZB', 'Navoi', 116300),
('Olmalik', 'UZB', 'Toskent', 114900),
('Termiz', 'UZB', 'Surkhondaryo', 109500),
('Minsk', 'BLR', 'Horad Minsk', 1674000),
('Gomel', 'BLR', 'Gomel', 475000),
('Mogiljov', 'BLR', 'Mogiljov', 356000),
('Vitebsk', 'BLR', 'Vitebsk', 340000),
('Grodno', 'BLR', 'Grodno', 302000),
('Brest', 'BLR', 'Brest', 286000),
('Bobruisk', 'BLR', 'Mogiljov', 221000),
('Baranoviti', 'BLR', 'Brest', 167000),
('Borisov', 'BLR', 'Minsk', 151000),
('Pinsk', 'BLR', 'Brest', 130000),
('Ora', 'BLR', 'Vitebsk', 124000),
('Mozyr', 'BLR', 'Gomel', 110000),
('Novopolotsk', 'BLR', 'Vitebsk', 106000),
('Lida', 'BLR', 'Grodno', 101000),
('Soligorsk', 'BLR', 'Minsk', 101000),
('Molodetno', 'BLR', 'Minsk', 97000),
('Mata-Utu', 'WLF', 'Wallis', 1137),
('Port-Vila', 'VUT', 'Shefa', 33700),
('Città del Vaticano', 'VAT', '', 455),
('Caracas', 'VEN', 'Distrito Federal', 1975294),
('Maracaíbo', 'VEN', 'Zulia', 1304776),
('Barquisimeto', 'VEN', 'Lara', 877239),
('Valencia', 'VEN', 'Carabobo', 794246),
('Ciudad Guayana', 'VEN', 'Bolívar', 663713),
('Petare', 'VEN', 'Miranda', 488868),
('Maracay', 'VEN', 'Aragua', 444443),
('Barcelona', 'VEN', 'Anzoátegui', 322267),
('Maturín', 'VEN', 'Monagas', 319726),
('San Cristóbal', 'VEN', 'Táchira', 319373),
('Ciudad Bolívar', 'VEN', 'Bolívar', 301107),
('Cumaná', 'VEN', 'Sucre', 293105),
('Mérida', 'VEN', 'Mérida', 224887),
('Cabimas', 'VEN', 'Zulia', 221329),
('Barinas', 'VEN', 'Barinas', 217831),
('Turmero', 'VEN', 'Aragua', 217499),
('Baruta', 'VEN', 'Miranda', 207290),
('Puerto Cabello', 'VEN', 'Carabobo', 187722),
('Santa Ana de Coro', 'VEN', 'Falcón', 185766),
('Los Teques', 'VEN', 'Miranda', 178784),
('Punto Fijo', 'VEN', 'Falcón', 167215),
('Guarenas', 'VEN', 'Miranda', 165889),
('Acarigua', 'VEN', 'Portuguesa', 158954),
('Puerto La Cruz', 'VEN', 'Anzoátegui', 155700),
('Ciudad Losada', 'VEN', '', 134501),
('Guacara', 'VEN', 'Carabobo', 131334),
('Valera', 'VEN', 'Trujillo', 130281),
('Guanare', 'VEN', 'Portuguesa', 125621),
('Carúpano', 'VEN', 'Sucre', 119639),
('Catia La Mar', 'VEN', 'Distrito Federal', 117012),
('El Tigre', 'VEN', 'Anzoátegui', 116256),
('Guatire', 'VEN', 'Miranda', 109121),
('Calabozo', 'VEN', 'Guárico', 107146),
('Pozuelos', 'VEN', 'Anzoátegui', 105690),
('Ciudad Ojeda', 'VEN', 'Zulia', 99354),
('Ocumare del Tuy', 'VEN', 'Miranda', 97168),
('Valle de la Pascua', 'VEN', 'Guárico', 95927),
('Araure', 'VEN', 'Portuguesa', 94269),
('San Fernando de Apure', 'VEN', 'Apure', 93809),
('San Felipe', 'VEN', 'Yaracuy', 90940),
('El Limón', 'VEN', 'Aragua', 90000),
('Moscow', 'RUS', 'Moscow (City)', 8389200),
('St Petersburg', 'RUS', 'Pietari', 4694000),
('Novosibirsk', 'RUS', 'Novosibirsk', 1398800),
('Nizni Novgorod', 'RUS', 'Nizni Novgorod', 1357000),
('Jekaterinburg', 'RUS', 'Sverdlovsk', 1266300),
('Samara', 'RUS', 'Samara', 1156100),
('Omsk', 'RUS', 'Omsk', 1148900),
('Kazan', 'RUS', 'Tatarstan', 1101000),
('Ufa', 'RUS', 'Bakortostan', 1091200),
('Teljabinsk', 'RUS', 'Teljabinsk', 1083200),
('Rostov-na-Donu', 'RUS', 'Rostov-na-Donu', 1012700),
('Perm', 'RUS', 'Perm', 1009700),
('Volgograd', 'RUS', 'Volgograd', 993400),
('Voronez', 'RUS', 'Voronez', 907700),
('Krasnojarsk', 'RUS', 'Krasnojarsk', 875500),
('Saratov', 'RUS', 'Saratov', 874000),
('Toljatti', 'RUS', 'Samara', 722900),
('Uljanovsk', 'RUS', 'Uljanovsk', 667400),
('Izevsk', 'RUS', 'Udmurtia', 652800),
('Krasnodar', 'RUS', 'Krasnodar', 639000),
('Jaroslavl', 'RUS', 'Jaroslavl', 616700),
('Habarovsk', 'RUS', 'Habarovsk', 609400),
('Vladivostok', 'RUS', 'Primorje', 606200),
('Irkutsk', 'RUS', 'Irkutsk', 593700),
('Barnaul', 'RUS', 'Altai', 580100),
('Novokuznetsk', 'RUS', 'Kemerovo', 561600),
('Penza', 'RUS', 'Penza', 532200),
('Rjazan', 'RUS', 'Rjazan', 529900),
('Orenburg', 'RUS', 'Orenburg', 523600),
('Lipetsk', 'RUS', 'Lipetsk', 521000),
('Nabereznyje Telny', 'RUS', 'Tatarstan', 514700),
('Tula', 'RUS', 'Tula', 506100),
('Tjumen', 'RUS', 'Tjumen', 503400),
('Kemerovo', 'RUS', 'Kemerovo', 492700),
('Astrahan', 'RUS', 'Astrahan', 486100),
('Tomsk', 'RUS', 'Tomsk', 482100),
('Kirov', 'RUS', 'Kirov', 466200),
('Ivanovo', 'RUS', 'Ivanovo', 459200),
('Teboksary', 'RUS', 'Tuvassia', 459200),
('Brjansk', 'RUS', 'Brjansk', 457400),
('Tver', 'RUS', 'Tver', 454900),
('Kursk', 'RUS', 'Kursk', 443500),
('Magnitogorsk', 'RUS', 'Teljabinsk', 427900),
('Kaliningrad', 'RUS', 'Kaliningrad', 424400),
('Nizni Tagil', 'RUS', 'Sverdlovsk', 390900),
('Murmansk', 'RUS', 'Murmansk', 376300),
('Ulan-Ude', 'RUS', 'Burjatia', 370400),
('Kurgan', 'RUS', 'Kurgan', 364700),
('Arkangeli', 'RUS', 'Arkangeli', 361800),
('Soti', 'RUS', 'Krasnodar', 358600),
('Smolensk', 'RUS', 'Smolensk', 353400),
('Orjol', 'RUS', 'Orjol', 344500),
('Stavropol', 'RUS', 'Stavropol', 343300),
('Belgorod', 'RUS', 'Belgorod', 342000),
('Kaluga', 'RUS', 'Kaluga', 339300),
('Vladimir', 'RUS', 'Vladimir', 337100),
('Mahatkala', 'RUS', 'Dagestan', 332800),
('Terepovets', 'RUS', 'Vologda', 324400),
('Saransk', 'RUS', 'Mordva', 314800),
('Tambov', 'RUS', 'Tambov', 312000),
('Vladikavkaz', 'RUS', 'North Ossetia-Alania', 310100),
('Tita', 'RUS', 'Tita', 309900),
('Vologda', 'RUS', 'Vologda', 302500),
('Veliki Novgorod', 'RUS', 'Novgorod', 299500),
('Komsomolsk-na-Amure', 'RUS', 'Habarovsk', 291600),
('Kostroma', 'RUS', 'Kostroma', 288100),
('Volzski', 'RUS', 'Volgograd', 286900),
('Taganrog', 'RUS', 'Rostov-na-Donu', 284400),
('Petroskoi', 'RUS', 'Karjala', 282100),
('Bratsk', 'RUS', 'Irkutsk', 277600),
('Dzerzinsk', 'RUS', 'Nizni Novgorod', 277100),
('Surgut', 'RUS', 'Hanti-Mansia', 274900),
('Orsk', 'RUS', 'Orenburg', 273900),
('Sterlitamak', 'RUS', 'Bakortostan', 265200),
('Angarsk', 'RUS', 'Irkutsk', 264700),
('Jokar-Ola', 'RUS', 'Marinmaa', 249200),
('Rybinsk', 'RUS', 'Jaroslavl', 239600),
('Prokopjevsk', 'RUS', 'Kemerovo', 237300),
('Niznevartovsk', 'RUS', 'Hanti-Mansia', 233900),
('Naltik', 'RUS', 'Kabardi-Balkaria', 233400),
('Syktyvkar', 'RUS', 'Komi', 229700),
('Severodvinsk', 'RUS', 'Arkangeli', 229300),
('Bijsk', 'RUS', 'Altai', 225000),
('Niznekamsk', 'RUS', 'Tatarstan', 223400),
('Blagovetensk', 'RUS', 'Amur', 222000),
('ahty', 'RUS', 'Rostov-na-Donu', 221800),
('Staryi Oskol', 'RUS', 'Belgorod', 213800),
('Zelenograd', 'RUS', 'Moscow (City)', 207100),
('Balakovo', 'RUS', 'Saratov', 206000),
('Novorossijsk', 'RUS', 'Krasnodar', 203300),
('Pihkova', 'RUS', 'Pihkova', 201500),
('Zlatoust', 'RUS', 'Teljabinsk', 196900),
('Jakutsk', 'RUS', 'Saha (Jakutia)', 195400),
('Podolsk', 'RUS', 'Moskova', 194300),
('Petropavlovsk-Kamtatski', 'RUS', 'Kamtatka', 194100),
('Kamensk-Uralski', 'RUS', 'Sverdlovsk', 190600),
('Engels', 'RUS', 'Saratov', 189000),
('Syzran', 'RUS', 'Samara', 186900),
('Grozny', 'RUS', 'Tetenia', 186000),
('Novoterkassk', 'RUS', 'Rostov-na-Donu', 184400),
('Berezniki', 'RUS', 'Perm', 181900),
('Juzno-Sahalinsk', 'RUS', 'Sahalin', 179200),
('Volgodonsk', 'RUS', 'Rostov-na-Donu', 178200),
('Abakan', 'RUS', 'Hakassia', 169200),
('Maikop', 'RUS', 'Adygea', 167300),
('Miass', 'RUS', 'Teljabinsk', 166200),
('Armavir', 'RUS', 'Krasnodar', 164900),
('Ljubertsy', 'RUS', 'Moskova', 163900),
('Rubtsovsk', 'RUS', 'Altai', 162600),
('Kovrov', 'RUS', 'Vladimir', 159900),
('Nahodka', 'RUS', 'Primorje', 157700),
('Ussurijsk', 'RUS', 'Primorje', 157300),
('Salavat', 'RUS', 'Bakortostan', 156800),
('Mytiti', 'RUS', 'Moskova', 155700),
('Kolomna', 'RUS', 'Moskova', 150700),
('Elektrostal', 'RUS', 'Moskova', 147000),
('Murom', 'RUS', 'Vladimir', 142400),
('Kolpino', 'RUS', 'Pietari', 141200),
('Norilsk', 'RUS', 'Krasnojarsk', 140800),
('Almetjevsk', 'RUS', 'Tatarstan', 140700),
('Novomoskovsk', 'RUS', 'Tula', 138100),
('Dimitrovgrad', 'RUS', 'Uljanovsk', 137000),
('Pervouralsk', 'RUS', 'Sverdlovsk', 136100),
('Himki', 'RUS', 'Moskova', 133700),
('Balaiha', 'RUS', 'Moskova', 132900),
('Nevinnomyssk', 'RUS', 'Stavropol', 132600),
('Pjatigorsk', 'RUS', 'Stavropol', 132500),
('Korolev', 'RUS', 'Moskova', 132400),
('Serpuhov', 'RUS', 'Moskova', 132000),
('Odintsovo', 'RUS', 'Moskova', 127400),
('Orehovo-Zujevo', 'RUS', 'Moskova', 124900),
('Kamyin', 'RUS', 'Volgograd', 124600),
('Novoteboksarsk', 'RUS', 'Tuvassia', 123400),
('Terkessk', 'RUS', 'Karatai-Terkessia', 121700),
('Atinsk', 'RUS', 'Krasnojarsk', 121600),
('Magadan', 'RUS', 'Magadan', 121000),
('Miturinsk', 'RUS', 'Tambov', 120700),
('Kislovodsk', 'RUS', 'Stavropol', 120400),
('Jelets', 'RUS', 'Lipetsk', 119400),
('Seversk', 'RUS', 'Tomsk', 118600),
('Noginsk', 'RUS', 'Moskova', 117200),
('Velikije Luki', 'RUS', 'Pihkova', 116300),
('Novokuibyevsk', 'RUS', 'Samara', 116200),
('Neftekamsk', 'RUS', 'Bakortostan', 115700),
('Leninsk-Kuznetski', 'RUS', 'Kemerovo', 113800),
('Oktjabrski', 'RUS', 'Bakortostan', 111500),
('Sergijev Posad', 'RUS', 'Moskova', 111100),
('Arzamas', 'RUS', 'Nizni Novgorod', 110700),
('Kiseljovsk', 'RUS', 'Kemerovo', 110000),
('Novotroitsk', 'RUS', 'Orenburg', 109600),
('Obninsk', 'RUS', 'Kaluga', 108300),
('Kansk', 'RUS', 'Krasnojarsk', 107400),
('Glazov', 'RUS', 'Udmurtia', 106300),
('Solikamsk', 'RUS', 'Perm', 106000),
('Sarapul', 'RUS', 'Udmurtia', 105700),
('Ust-Ilimsk', 'RUS', 'Irkutsk', 105200),
('tolkovo', 'RUS', 'Moskova', 104900),
('Mezduretensk', 'RUS', 'Kemerovo', 104400),
('Usolje-Sibirskoje', 'RUS', 'Irkutsk', 103500),
('Elista', 'RUS', 'Kalmykia', 103300),
('Novoahtinsk', 'RUS', 'Rostov-na-Donu', 101900),
('Votkinsk', 'RUS', 'Udmurtia', 101700),
('Kyzyl', 'RUS', 'Tyva', 101100),
('Serov', 'RUS', 'Sverdlovsk', 100400),
('Zelenodolsk', 'RUS', 'Tatarstan', 100200),
('Zeleznodoroznyi', 'RUS', 'Moskova', 100100),
('Kinema', 'RUS', 'Ivanovo', 100000),
('Kuznetsk', 'RUS', 'Penza', 98200),
('Uhta', 'RUS', 'Komi', 98000),
('Jessentuki', 'RUS', 'Stavropol', 97900),
('Tobolsk', 'RUS', 'Tjumen', 97600),
('Neftejugansk', 'RUS', 'Hanti-Mansia', 97400),
('Bataisk', 'RUS', 'Rostov-na-Donu', 97300),
('Nojabrsk', 'RUS', 'Yamalin Nenetsia', 97300),
('Balaov', 'RUS', 'Saratov', 97100),
('Zeleznogorsk', 'RUS', 'Kursk', 96900),
('Zukovski', 'RUS', 'Moskova', 96500),
('Anzero-Sudzensk', 'RUS', 'Kemerovo', 96100),
('Bugulma', 'RUS', 'Tatarstan', 94100),
('Zeleznogorsk', 'RUS', 'Krasnojarsk', 94000),
('Novouralsk', 'RUS', 'Sverdlovsk', 93300),
('Pukin', 'RUS', 'Pietari', 92900),
('Vorkuta', 'RUS', 'Komi', 92600),
('Derbent', 'RUS', 'Dagestan', 92300),
('Kirovo-Tepetsk', 'RUS', 'Kirov', 91600),
('Krasnogorsk', 'RUS', 'Moskova', 91000),
('Klin', 'RUS', 'Moskova', 90000),
('Taikovski', 'RUS', 'Perm', 90000),
('Novyi Urengoi', 'RUS', 'Yamalin Nenetsia', 89800),
('Ho Chi Minh City', 'VNM', 'Ho Chi Minh City', 3980000),
('Hanoi', 'VNM', 'Hanoi', 1410000),
('Haiphong', 'VNM', 'Haiphong', 783133),
('Da Nang', 'VNM', 'Quang Nam-Da Nang', 382674),
('Biên Hoa', 'VNM', 'Dong Nai', 282095),
('Nha Trang', 'VNM', 'Khanh Hoa', 221331),
('Hue', 'VNM', 'Thua Thien-Hue', 219149),
('Can Tho', 'VNM', 'Can Tho', 215587),
('Cam Pha', 'VNM', 'Quang Binh', 209086),
('Nam Dinh', 'VNM', 'Nam Ha', 171699),
('Quy Nhon', 'VNM', 'Binh Dinh', 163385),
('Vung Tau', 'VNM', 'Ba Ria-Vung Tau', 145145),
('Rach Gia', 'VNM', 'Kien Giang', 141132),
('Long Xuyen', 'VNM', 'An Giang', 132681),
('Thai Nguyen', 'VNM', 'Bac Thai', 127643),
('Hong Gai', 'VNM', 'Quang Ninh', 127484),
('Phan Thiêt', 'VNM', 'Binh Thuan', 114236),
('Cam Ranh', 'VNM', 'Khanh Hoa', 114041),
('Vinh', 'VNM', 'Nghe An', 112455),
('My Tho', 'VNM', 'Tien Giang', 108404),
('Da Lat', 'VNM', 'Lam Dong', 106409),
('Buon Ma Thuot', 'VNM', 'Dac Lac', 97044),
('Tallinn', 'EST', 'Harjumaa', 403981),
('Tartu', 'EST', 'Tartumaa', 101246),
('New York', 'USA', 'New York', 8008278),
('Los Angeles', 'USA', 'California', 3694820),
('Chicago', 'USA', 'Illinois', 2896016),
('Houston', 'USA', 'Texas', 1953631),
('Philadelphia', 'USA', 'Pennsylvania', 1517550),
('Phoenix', 'USA', 'Arizona', 1321045),
('San Diego', 'USA', 'California', 1223400),
('Dallas', 'USA', 'Texas', 1188580),
('San Antonio', 'USA', 'Texas', 1144646),
('Detroit', 'USA', 'Michigan', 951270),
('San Jose', 'USA', 'California', 894943),
('Indianapolis', 'USA', 'Indiana', 791926),
('San Francisco', 'USA', 'California', 776733),
('Jacksonville', 'USA', 'Florida', 735167),
('Columbus', 'USA', 'Ohio', 711470),
('Austin', 'USA', 'Texas', 656562),
('Baltimore', 'USA', 'Maryland', 651154),
('Memphis', 'USA', 'Tennessee', 650100),
('Milwaukee', 'USA', 'Wisconsin', 596974),
('Boston', 'USA', 'Massachusetts', 589141),
('Washington', 'USA', 'District of Columbia', 572059),
('Nashville-Davidson', 'USA', 'Tennessee', 569891),
('El Paso', 'USA', 'Texas', 563662),
('Seattle', 'USA', 'Washington', 563374),
('Denver', 'USA', 'Colorado', 554636),
('Charlotte', 'USA', 'North Carolina', 540828),
('Fort Worth', 'USA', 'Texas', 534694),
('Portland', 'USA', 'Oregon', 529121),
('Oklahoma City', 'USA', 'Oklahoma', 506132),
('Tucson', 'USA', 'Arizona', 486699),
('New Orleans', 'USA', 'Louisiana', 484674),
('Las Vegas', 'USA', 'Nevada', 478434),
('Cleveland', 'USA', 'Ohio', 478403),
('Long Beach', 'USA', 'California', 461522),
('Albuquerque', 'USA', 'New Mexico', 448607),
('Kansas City', 'USA', 'Missouri', 441545),
('Fresno', 'USA', 'California', 427652),
('Virginia Beach', 'USA', 'Virginia', 425257),
('Atlanta', 'USA', 'Georgia', 416474),
('Sacramento', 'USA', 'California', 407018),
('Oakland', 'USA', 'California', 399484),
('Mesa', 'USA', 'Arizona', 396375),
('Tulsa', 'USA', 'Oklahoma', 393049),
('Omaha', 'USA', 'Nebraska', 390007),
('Minneapolis', 'USA', 'Minnesota', 382618),
('Honolulu', 'USA', 'Hawaii', 371657),
('Miami', 'USA', 'Florida', 362470),
('Colorado Springs', 'USA', 'Colorado', 360890),
('Saint Louis', 'USA', 'Missouri', 348189),
('Wichita', 'USA', 'Kansas', 344284),
('Santa Ana', 'USA', 'California', 337977),
('Pittsburgh', 'USA', 'Pennsylvania', 334563),
('Arlington', 'USA', 'Texas', 332969),
('Cincinnati', 'USA', 'Ohio', 331285),
('Anaheim', 'USA', 'California', 328014),
('Toledo', 'USA', 'Ohio', 313619),
('Tampa', 'USA', 'Florida', 303447),
('Buffalo', 'USA', 'New York', 292648),
('Saint Paul', 'USA', 'Minnesota', 287151),
('Corpus Christi', 'USA', 'Texas', 277454),
('Aurora', 'USA', 'Colorado', 276393),
('Raleigh', 'USA', 'North Carolina', 276093),
('Newark', 'USA', 'New Jersey', 273546),
('Lexington-Fayette', 'USA', 'Kentucky', 260512),
('Anchorage', 'USA', 'Alaska', 260283),
('Louisville', 'USA', 'Kentucky', 256231),
('Riverside', 'USA', 'California', 255166),
('Saint Petersburg', 'USA', 'Florida', 248232),
('Bakersfield', 'USA', 'California', 247057),
('Stockton', 'USA', 'California', 243771),
('Birmingham', 'USA', 'Alabama', 242820),
('Jersey City', 'USA', 'New Jersey', 240055),
('Norfolk', 'USA', 'Virginia', 234403),
('Baton Rouge', 'USA', 'Louisiana', 227818),
('Hialeah', 'USA', 'Florida', 226419),
('Lincoln', 'USA', 'Nebraska', 225581),
('Greensboro', 'USA', 'North Carolina', 223891),
('Plano', 'USA', 'Texas', 222030),
('Rochester', 'USA', 'New York', 219773),
('Glendale', 'USA', 'Arizona', 218812),
('Akron', 'USA', 'Ohio', 217074),
('Garland', 'USA', 'Texas', 215768),
('Madison', 'USA', 'Wisconsin', 208054),
('Fort Wayne', 'USA', 'Indiana', 205727),
('Fremont', 'USA', 'California', 203413),
('Scottsdale', 'USA', 'Arizona', 202705),
('Montgomery', 'USA', 'Alabama', 201568),
('Shreveport', 'USA', 'Louisiana', 200145),
('Augusta-Richmond County', 'USA', 'Georgia', 199775),
('Lubbock', 'USA', 'Texas', 199564),
('Chesapeake', 'USA', 'Virginia', 199184),
('Mobile', 'USA', 'Alabama', 198915),
('Des Moines', 'USA', 'Iowa', 198682),
('Grand Rapids', 'USA', 'Michigan', 197800),
('Richmond', 'USA', 'Virginia', 197790),
('Yonkers', 'USA', 'New York', 196086),
('Spokane', 'USA', 'Washington', 195629),
('Glendale', 'USA', 'California', 194973),
('Tacoma', 'USA', 'Washington', 193556),
('Irving', 'USA', 'Texas', 191615),
('Huntington Beach', 'USA', 'California', 189594),
('Modesto', 'USA', 'California', 188856),
('Durham', 'USA', 'North Carolina', 187035),
('Columbus', 'USA', 'Georgia', 186291),
('Orlando', 'USA', 'Florida', 185951),
('Boise City', 'USA', 'Idaho', 185787),
('Winston-Salem', 'USA', 'North Carolina', 185776),
('San Bernardino', 'USA', 'California', 185401),
('Jackson', 'USA', 'Mississippi', 184256),
('Little Rock', 'USA', 'Arkansas', 183133),
('Salt Lake City', 'USA', 'Utah', 181743),
('Reno', 'USA', 'Nevada', 180480),
('Newport News', 'USA', 'Virginia', 180150),
('Chandler', 'USA', 'Arizona', 176581),
('Laredo', 'USA', 'Texas', 176576),
('Henderson', 'USA', 'Nevada', 175381),
('Arlington', 'USA', 'Virginia', 174838),
('Knoxville', 'USA', 'Tennessee', 173890),
('Amarillo', 'USA', 'Texas', 173627),
('Providence', 'USA', 'Rhode Island', 173618),
('Chula Vista', 'USA', 'California', 173556),
('Worcester', 'USA', 'Massachusetts', 172648),
('Oxnard', 'USA', 'California', 170358),
('Dayton', 'USA', 'Ohio', 166179),
('Garden Grove', 'USA', 'California', 165196),
('Oceanside', 'USA', 'California', 161029),
('Tempe', 'USA', 'Arizona', 158625),
('Huntsville', 'USA', 'Alabama', 158216),
('Ontario', 'USA', 'California', 158007),
('Chattanooga', 'USA', 'Tennessee', 155554),
('Fort Lauderdale', 'USA', 'Florida', 152397),
('Springfield', 'USA', 'Massachusetts', 152082),
('Springfield', 'USA', 'Missouri', 151580),
('Santa Clarita', 'USA', 'California', 151088),
('Salinas', 'USA', 'California', 151060),
('Tallahassee', 'USA', 'Florida', 150624),
('Rockford', 'USA', 'Illinois', 150115),
('Pomona', 'USA', 'California', 149473),
('Metairie', 'USA', 'Louisiana', 149428),
('Paterson', 'USA', 'New Jersey', 149222),
('Overland Park', 'USA', 'Kansas', 149080),
('Santa Rosa', 'USA', 'California', 147595),
('Syracuse', 'USA', 'New York', 147306),
('Kansas City', 'USA', 'Kansas', 146866),
('Hampton', 'USA', 'Virginia', 146437),
('Lakewood', 'USA', 'Colorado', 144126),
('Vancouver', 'USA', 'Washington', 143560),
('Irvine', 'USA', 'California', 143072),
('Aurora', 'USA', 'Illinois', 142990),
('Moreno Valley', 'USA', 'California', 142381),
('Pasadena', 'USA', 'California', 141674),
('Hayward', 'USA', 'California', 140030),
('Brownsville', 'USA', 'Texas', 139722),
('Bridgeport', 'USA', 'Connecticut', 139529),
('Hollywood', 'USA', 'Florida', 139357),
('Warren', 'USA', 'Michigan', 138247),
('Torrance', 'USA', 'California', 137946),
('Eugene', 'USA', 'Oregon', 137893),
('Pembroke Pines', 'USA', 'Florida', 137427),
('Salem', 'USA', 'Oregon', 136924),
('Pasadena', 'USA', 'Texas', 133936),
('Escondido', 'USA', 'California', 133559),
('Sunnyvale', 'USA', 'California', 131760),
('Savannah', 'USA', 'Georgia', 131510),
('Fontana', 'USA', 'California', 128929),
('Orange', 'USA', 'California', 128821),
('Naperville', 'USA', 'Illinois', 128358),
('Alexandria', 'USA', 'Virginia', 128283),
('Rancho Cucamonga', 'USA', 'California', 127743),
('Grand Prairie', 'USA', 'Texas', 127427),
('East Los Angeles', 'USA', 'California', 126379),
('Fullerton', 'USA', 'California', 126003),
('Corona', 'USA', 'California', 124966),
('Flint', 'USA', 'Michigan', 124943),
('Paradise', 'USA', 'Nevada', 124682),
('Mesquite', 'USA', 'Texas', 124523),
('Sterling Heights', 'USA', 'Michigan', 124471),
('Sioux Falls', 'USA', 'South Dakota', 123975),
('New Haven', 'USA', 'Connecticut', 123626),
('Topeka', 'USA', 'Kansas', 122377),
('Concord', 'USA', 'California', 121780),
('Evansville', 'USA', 'Indiana', 121582),
('Hartford', 'USA', 'Connecticut', 121578),
('Fayetteville', 'USA', 'North Carolina', 121015),
('Cedar Rapids', 'USA', 'Iowa', 120758),
('Elizabeth', 'USA', 'New Jersey', 120568),
('Lansing', 'USA', 'Michigan', 119128),
('Lancaster', 'USA', 'California', 118718),
('Fort Collins', 'USA', 'Colorado', 118652),
('Coral Springs', 'USA', 'Florida', 117549),
('Stamford', 'USA', 'Connecticut', 117083),
('Thousand Oaks', 'USA', 'California', 117005),
('Vallejo', 'USA', 'California', 116760),
('Palmdale', 'USA', 'California', 116670),
('Columbia', 'USA', 'South Carolina', 116278),
('El Monte', 'USA', 'California', 115965),
('Abilene', 'USA', 'Texas', 115930),
('North Las Vegas', 'USA', 'Nevada', 115488),
('Ann Arbor', 'USA', 'Michigan', 114024),
('Beaumont', 'USA', 'Texas', 113866),
('Waco', 'USA', 'Texas', 113726),
('Macon', 'USA', 'Georgia', 113336),
('Independence', 'USA', 'Missouri', 113288),
('Peoria', 'USA', 'Illinois', 112936),
('Inglewood', 'USA', 'California', 112580),
('Springfield', 'USA', 'Illinois', 111454),
('Simi Valley', 'USA', 'California', 111351),
('Lafayette', 'USA', 'Louisiana', 110257),
('Gilbert', 'USA', 'Arizona', 109697),
('Carrollton', 'USA', 'Texas', 109576),
('Bellevue', 'USA', 'Washington', 109569),
('West Valley City', 'USA', 'Utah', 108896),
('Clarksville', 'USA', 'Tennessee', 108787),
('Costa Mesa', 'USA', 'California', 108724),
('Peoria', 'USA', 'Arizona', 108364),
('South Bend', 'USA', 'Indiana', 107789),
('Downey', 'USA', 'California', 107323),
('Waterbury', 'USA', 'Connecticut', 107271),
('Manchester', 'USA', 'New Hampshire', 107006),
('Allentown', 'USA', 'Pennsylvania', 106632),
('McAllen', 'USA', 'Texas', 106414),
('Joliet', 'USA', 'Illinois', 106221),
('Lowell', 'USA', 'Massachusetts', 105167),
('Provo', 'USA', 'Utah', 105166),
('West Covina', 'USA', 'California', 105080),
('Wichita Falls', 'USA', 'Texas', 104197),
('Erie', 'USA', 'Pennsylvania', 103717),
('Daly City', 'USA', 'California', 103621),
('Citrus Heights', 'USA', 'California', 103455),
('Norwalk', 'USA', 'California', 103298),
('Gary', 'USA', 'Indiana', 102746),
('Berkeley', 'USA', 'California', 102743),
('Santa Clara', 'USA', 'California', 102361),
('Green Bay', 'USA', 'Wisconsin', 102313),
('Cape Coral', 'USA', 'Florida', 102286),
('Arvada', 'USA', 'Colorado', 102153),
('Pueblo', 'USA', 'Colorado', 102121),
('Sandy', 'USA', 'Utah', 101853),
('Athens-Clarke County', 'USA', 'Georgia', 101489),
('Cambridge', 'USA', 'Massachusetts', 101355),
('Westminster', 'USA', 'Colorado', 100940),
('San Buenaventura', 'USA', 'California', 100916),
('Portsmouth', 'USA', 'Virginia', 100565),
('Livonia', 'USA', 'Michigan', 100545),
('Burbank', 'USA', 'California', 100316),
('Clearwater', 'USA', 'Florida', 99936),
('Midland', 'USA', 'Texas', 98293),
('Davenport', 'USA', 'Iowa', 98256),
('Mission Viejo', 'USA', 'California', 98049),
('Miami Beach', 'USA', 'Florida', 97855),
('Sunrise Manor', 'USA', 'Nevada', 95362),
('New Bedford', 'USA', 'Massachusetts', 94780),
('El Cajon', 'USA', 'California', 94578),
('Norman', 'USA', 'Oklahoma', 94193),
('Richmond', 'USA', 'California', 94100),
('Albany', 'USA', 'New York', 93994),
('Brockton', 'USA', 'Massachusetts', 93653),
('Roanoke', 'USA', 'Virginia', 93357),
('Billings', 'USA', 'Montana', 92988),
('Compton', 'USA', 'California', 92864),
('Gainesville', 'USA', 'Florida', 92291),
('Fairfield', 'USA', 'California', 92256),
('Arden-Arcade', 'USA', 'California', 92040),
('San Mateo', 'USA', 'California', 91799),
('Visalia', 'USA', 'California', 91762),
('Boulder', 'USA', 'Colorado', 91238),
('Cary', 'USA', 'North Carolina', 91213),
('Santa Monica', 'USA', 'California', 91084),
('Fall River', 'USA', 'Massachusetts', 90555),
('Kenosha', 'USA', 'Wisconsin', 89447),
('Elgin', 'USA', 'Illinois', 89408),
('Odessa', 'USA', 'Texas', 89293),
('Carson', 'USA', 'California', 89089),
('Charleston', 'USA', 'South Carolina', 89063),
('Charlotte Amalie', 'VIR', 'St Thomas', 13000),
('Harare', 'ZWE', 'Harare', 1410000),
('Bulawayo', 'ZWE', 'Bulawayo', 621742),
('Chitungwiza', 'ZWE', 'Harare', 274912),
('Mount Darwin', 'ZWE', 'Harare', 164362),
('Mutare', 'ZWE', 'Manicaland', 131367),
('Gweru', 'ZWE', 'Midlands', 128037),
('Gaza', 'PSE', 'Gaza', 353632),
('Khan Yunis', 'PSE', 'Khan Yunis', 123175),
('Hebron', 'PSE', 'Hebron', 119401),
('Jabaliya', 'PSE', 'North Gaza', 113901),
('Nablus', 'PSE', 'Nablus', 100231),
('Rafah', 'PSE', 'Rafah', 92020);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: chriskl
--
INSERT INTO country VALUES ('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090, 1919, 22720000, 45.900002, 5976.00, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF');
INSERT INTO country VALUES ('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526, 1581, 15864000, 78.300003, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL');
INSERT INTO country VALUES ('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800, NULL, 217000, 74.699997, 1941.00, NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN');
INSERT INTO country VALUES ('ALB', 'Albania', 'Europe', 'Southern Europe', 28748, 1912, 3401200, 71.599998, 3205.00, 2500.00, 'Shqipëria', 'Republic', 'Rexhep Mejdani', 34, 'AL');
INSERT INTO country VALUES ('DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741, 1962, 31471000, 69.699997, 49982.00, 46966.00, 'Al-Jazair/Algérie', 'Republic', 'Abdelaziz Bouteflika', 35, 'DZ');
INSERT INTO country VALUES ('ASM', 'American Samoa', 'Oceania', 'Polynesia', 199, NULL, 68000, 75.099998, 334.00, NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS');
INSERT INTO country VALUES ('AND', 'Andorra', 'Europe', 'Southern Europe', 468, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra', 'Parliamentary Coprincipality', '', 55, 'AD');
INSERT INTO country VALUES ('AGO', 'Angola', 'Africa', 'Central Africa', 1246700, 1975, 12878000, 38.299999, 6648.00, 7984.00, 'Angola', 'Republic', 'José Eduardo dos Santos', 56, 'AO');
INSERT INTO country VALUES ('AIA', 'Anguilla', 'North America', 'Caribbean', 96, NULL, 8000, 76.099998, 63.20, NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI');
INSERT INTO country VALUES ('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442, 1981, 68000, 70.5, 612.00, 584.00, 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG');
INSERT INTO country VALUES ('ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600, 1971, 2441000, 74.099998, 37966.00, 36846.00, 'Al-Imarat al-´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE');
INSERT INTO country VALUES ('ARG', 'Argentina', 'South America', 'South America', 2780400, 1816, 37032000, 75.099998, 340238.00, 323310.00, 'Argentina', 'Federal Republic', 'Fernando de la Rúa', 69, 'AR');
INSERT INTO country VALUES ('ARM', 'Armenia', 'Asia', 'Middle East', 29800, 1991, 3520000, 66.400002, 1813.00, 1627.00, 'Hajastan', 'Republic', 'Robert Kotarjan', 126, 'AM');
INSERT INTO country VALUES ('ABW', 'Aruba', 'North America', 'Caribbean', 193, NULL, 103000, 78.400002, 828.00, 793.00, 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW');
INSERT INTO country VALUES ('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220, 1901, 18886000, 79.800003, 351182.00, 392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU');
INSERT INTO country VALUES ('AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600, 1991, 7734000, 62.900002, 4127.00, 4100.00, 'Azärbaycan', 'Federal Republic', 'Heydär Äliyev', 144, 'AZ');
INSERT INTO country VALUES ('BHS', 'Bahamas', 'North America', 'Caribbean', 13878, 1973, 307000, 71.099998, 3527.00, 3347.00, 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS');
INSERT INTO country VALUES ('BHR', 'Bahrain', 'Asia', 'Middle East', 694, 1971, 617000, 73, 6366.00, 6097.00, 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH');
INSERT INTO country VALUES ('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998, 1971, 129155000, 60.200001, 32852.00, 31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD');
INSERT INTO country VALUES ('BRB', 'Barbados', 'North America', 'Caribbean', 430, 1966, 270000, 73, 2223.00, 2186.00, 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB');
INSERT INTO country VALUES ('BEL', 'Belgium', 'Europe', 'Western Europe', 30518, 1830, 10239000, 77.800003, 249704.00, 243948.00, 'België/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE');
INSERT INTO country VALUES ('BLZ', 'Belize', 'North America', 'Central America', 22696, 1981, 241000, 70.900002, 630.00, 616.00, 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ');
INSERT INTO country VALUES ('BEN', 'Benin', 'Africa', 'Western Africa', 112622, 1960, 6097000, 50.200001, 2357.00, 2141.00, 'Bénin', 'Republic', 'Mathieu Kérékou', 187, 'BJ');
INSERT INTO country VALUES ('BMU', 'Bermuda', 'North America', 'North America', 53, NULL, 65000, 76.900002, 2328.00, 2190.00, 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM');
INSERT INTO country VALUES ('BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000, 1910, 2124000, 52.400002, 372.00, 383.00, 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 192, 'BT');
INSERT INTO country VALUES ('BOL', 'Bolivia', 'South America', 'South America', 1098581, 1825, 8329000, 63.700001, 8571.00, 7967.00, 'Bolivia', 'Republic', 'Hugo Bánzer Suárez', 194, 'BO');
INSERT INTO country VALUES ('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197, 1992, 3972000, 71.5, 2841.00, NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA');
INSERT INTO country VALUES ('BWA', 'Botswana', 'Africa', 'Southern Africa', 581730, 1966, 1622000, 39.299999, 4834.00, 4935.00, 'Botswana', 'Republic', 'Festus G. Mogae', 204, 'BW');
INSERT INTO country VALUES ('BRA', 'Brazil', 'South America', 'South America', 8547403, 1822, 170115000, 62.900002, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR');
INSERT INTO country VALUES ('GBR', 'United Kingdom', 'Europe', 'British Islands', 242900, 1066, 59623400, 77.699997, 1378330.00, 1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB');
INSERT INTO country VALUES ('VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151, NULL, 21000, 75.400002, 612.00, 573.00, 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 537, 'VG');
INSERT INTO country VALUES ('BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765, 1984, 328000, 73.599998, 11705.00, 12460.00, 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN');
INSERT INTO country VALUES ('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994, 1908, 8190900, 70.900002, 12178.00, 10169.00, 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG');
INSERT INTO country VALUES ('BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000, 1960, 11937000, 46.700001, 2425.00, 2201.00, 'Burkina Faso', 'Republic', 'Blaise Compaoré', 549, 'BF');
INSERT INTO country VALUES ('BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834, 1962, 6695000, 46.200001, 903.00, 982.00, 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI');
INSERT INTO country VALUES ('CYM', 'Cayman Islands', 'North America', 'Caribbean', 264, NULL, 38000, 78.900002, 1263.00, 1186.00, 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY');
INSERT INTO country VALUES ('CHL', 'Chile', 'South America', 'South America', 756626, 1810, 15211000, 75.699997, 72949.00, 75780.00, 'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL');
INSERT INTO country VALUES ('COK', 'Cook Islands', 'Oceania', 'Polynesia', 236, NULL, 20000, 71.099998, 100.00, NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK');
INSERT INTO country VALUES ('CRI', 'Costa Rica', 'North America', 'Central America', 51100, 1821, 4023000, 75.800003, 10226.00, 9757.00, 'Costa Rica', 'Republic', 'Miguel Ángel Rodríguez Echeverría', 584, 'CR');
INSERT INTO country VALUES ('DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200, 1977, 638000, 50.799999, 382.00, 373.00, 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 585, 'DJ');
INSERT INTO country VALUES ('DMA', 'Dominica', 'North America', 'Caribbean', 751, 1978, 71000, 73.400002, 256.00, 243.00, 'Dominica', 'Republic', 'Vernon Shaw', 586, 'DM');
INSERT INTO country VALUES ('DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511, 1844, 8495000, 73.199997, 15846.00, 15076.00, 'República Dominicana', 'Republic', 'Hipólito Mejía Domínguez', 587, 'DO');
INSERT INTO country VALUES ('ECU', 'Ecuador', 'South America', 'South America', 283561, 1822, 12646000, 71.099998, 19770.00, 19769.00, 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', 594, 'EC');
INSERT INTO country VALUES ('EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449, 1922, 68470000, 63.299999, 82710.00, 75617.00, 'Misr', 'Republic', 'Hosni Mubarak', 608, 'EG');
INSERT INTO country VALUES ('SLV', 'El Salvador', 'North America', 'Central America', 21041, 1841, 6276000, 69.699997, 11863.00, 11203.00, 'El Salvador', 'Republic', 'Francisco Guillermo Flores Pérez', 645, 'SV');
INSERT INTO country VALUES ('ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600, 1993, 3850000, 55.799999, 650.00, 755.00, 'Ertra', 'Republic', 'Isayas Afewerki [Isaias Afwerki]', 652, 'ER');
INSERT INTO country VALUES ('ESP', 'Spain', 'Europe', 'Southern Europe', 505992, 1492, 39441700, 78.800003, 553233.00, 532031.00, 'España', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES');
INSERT INTO country VALUES ('ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037, 1910, 40377000, 51.099998, 116729.00, 129092.00, 'South Africa', 'Republic', 'Thabo Mbeki', 716, 'ZA');
INSERT INTO country VALUES ('ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300, -1000, 62565000, 45.200001, 6353.00, 6180.00, 'YeItyop´iya', 'Republic', 'Negasso Gidada', 756, 'ET');
INSERT INTO country VALUES ('FLK', 'Falkland Islands', 'South America', 'South America', 12173, NULL, 2000, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK');
INSERT INTO country VALUES ('FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274, 1970, 817000, 67.900002, 1536.00, 2149.00, 'Fiji Islands', 'Republic', 'Josefa Iloilo', 764, 'FJ');
INSERT INTO country VALUES ('PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', 766, 'PH');
INSERT INTO country VALUES ('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399, NULL, 43000, 78.400002, 0.00, NULL, 'Føroyar', 'Part of Denmark', 'Margrethe II', 901, 'FO');
INSERT INTO country VALUES ('GAB', 'Gabon', 'Africa', 'Central Africa', 267668, 1960, 1226000, 50.099998, 5493.00, 5279.00, 'Le Gabon', 'Republic', 'Omar Bongo', 902, 'GA');
INSERT INTO country VALUES ('GMB', 'Gambia', 'Africa', 'Western Africa', 11295, 1965, 1305000, 53.200001, 320.00, 325.00, 'The Gambia', 'Republic', 'Yahya Jammeh', 904, 'GM');
INSERT INTO country VALUES ('GEO', 'Georgia', 'Asia', 'Middle East', 69700, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic', 'Eduard evardnadze', 905, 'GE');
INSERT INTO country VALUES ('GHA', 'Ghana', 'Africa', 'Western Africa', 238533, 1957, 20212000, 57.400002, 7137.00, 6884.00, 'Ghana', 'Republic', 'John Kufuor', 910, 'GH');
INSERT INTO country VALUES ('GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6, NULL, 25000, 79, 258.00, NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI');
INSERT INTO country VALUES ('GRD', 'Grenada', 'North America', 'Caribbean', 344, 1974, 94000, 64.5, 318.00, NULL, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', 916, 'GD');
INSERT INTO country VALUES ('GRL', 'Greenland', 'North America', 'North America', 2166090, NULL, 56000, 68.099998, 0.00, NULL, 'Kalaallit Nunaat/Grønland', 'Part of Denmark', 'Margrethe II', 917, 'GL');
INSERT INTO country VALUES ('GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705, NULL, 456000, 77, 3501.00, NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 919, 'GP');
INSERT INTO country VALUES ('GUM', 'Guam', 'Oceania', 'Micronesia', 549, NULL, 168000, 77.800003, 1197.00, 1136.00, 'Guam', 'US Territory', 'George W. Bush', 921, 'GU');
INSERT INTO country VALUES ('GTM', 'Guatemala', 'North America', 'Central America', 108889, 1821, 11385000, 66.199997, 19008.00, 17797.00, 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 922, 'GT');
INSERT INTO country VALUES ('GIN', 'Guinea', 'Africa', 'Western Africa', 245857, 1958, 7430000, 45.599998, 2352.00, 2383.00, 'Guinée', 'Republic', 'Lansana Conté', 926, 'GN');
INSERT INTO country VALUES ('GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125, 1974, 1213000, 49, 293.00, 272.00, 'Guiné-Bissau', 'Republic', 'Kumba Ialá', 927, 'GW');
INSERT INTO country VALUES ('GUY', 'Guyana', 'South America', 'South America', 214969, 1966, 861000, 64, 722.00, 743.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 928, 'GY');
INSERT INTO country VALUES ('HTI', 'Haiti', 'North America', 'Caribbean', 27750, 1804, 8222000, 49.200001, 3459.00, 3107.00, 'Haïti/Dayti', 'Republic', 'Jean-Bertrand Aristide', 929, 'HT');
INSERT INTO country VALUES ('HND', 'Honduras', 'North America', 'Central America', 112088, 1838, 6485000, 69.900002, 5333.00, 4697.00, 'Honduras', 'Republic', 'Carlos Roberto Flores Facussé', 933, 'HN');
INSERT INTO country VALUES ('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075, NULL, 6782000, 79.5, 166448.00, 173610.00, 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK');
INSERT INTO country VALUES ('SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422, NULL, 3200, NULL, 0.00, NULL, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 938, 'SJ');
INSERT INTO country VALUES ('IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569, 1945, 212107000, 68, 84982.00, 215002.00, 'Indonesia', 'Republic', 'Abdurrahman Wahid', 939, 'ID');
INSERT INTO country VALUES ('IND', 'India', 'Asia', 'Southern and Central Asia', 3287263, 1947, 1013662000, 62.5, 447114.00, 430572.00, 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 1109, 'IN');
INSERT INTO country VALUES ('IRQ', 'Iraq', 'Asia', 'Middle East', 438317, 1932, 23115000, 66.5, 11500.00, NULL, 'Al-´Iraq', 'Republic', 'Saddam Hussein al-Takriti', 1365, 'IQ');
INSERT INTO country VALUES ('IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195, 1906, 67702000, 69.699997, 195746.00, 160151.00, 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 1380, 'IR');
INSERT INTO country VALUES ('IRL', 'Ireland', 'Europe', 'British Islands', 70273, 1921, 3775100, 76.800003, 75921.00, 73132.00, 'Ireland/Éire', 'Republic', 'Mary McAleese', 1447, 'IE');
INSERT INTO country VALUES ('ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000, 1944, 279000, 79.400002, 8255.00, 7474.00, 'Ísland', 'Republic', 'Ólafur Ragnar Grímsson', 1449, 'IS');
INSERT INTO country VALUES ('ISR', 'Israel', 'Asia', 'Middle East', 21056, 1948, 6217000, 78.599998, 97477.00, 98577.00, 'Yisrael/Israil', 'Republic', 'Moshe Katzav', 1450, 'IL');
INSERT INTO country VALUES ('ITA', 'Italy', 'Europe', 'Southern Europe', 301316, 1861, 57680000, 79, 1161755.00, 1145372.00, 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT');
INSERT INTO country VALUES ('TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874, NULL, 885000, 46, 0.00, NULL, 'Timor Timur', 'Administrated by the UN', 'José Alexandre Gusmão', 1522, 'TP');
INSERT INTO country VALUES ('AUT', 'Austria', 'Europe', 'Western Europe', 83859, 1918, 8091800, 77.699997, 211860.00, 206025.00, 'Österreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT');
INSERT INTO country VALUES ('JAM', 'Jamaica', 'North America', 'Caribbean', 10990, 1962, 2583000, 75.199997, 6871.00, 6722.00, 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', 1530, 'JM');
INSERT INTO country VALUES ('JPN', 'Japan', 'Asia', 'Eastern Asia', 377829, -660, 126714000, 80.699997, 3787042.00, 4192638.00, 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 1532, 'JP');
INSERT INTO country VALUES ('YEM', 'Yemen', 'Asia', 'Middle East', 527968, 1918, 18112000, 59.799999, 6041.00, 5729.00, 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', 1780, 'YE');
INSERT INTO country VALUES ('JOR', 'Jordan', 'Asia', 'Middle East', 88946, 1946, 5083000, 77.400002, 7526.00, 7051.00, 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', 1786, 'JO');
INSERT INTO country VALUES ('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135, NULL, 2500, NULL, 0.00, NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX');
INSERT INTO country VALUES ('YUG', 'Yugoslavia', 'Europe', 'Southern Europe', 102173, 1918, 10640000, 72.400002, 17000.00, NULL, 'Jugoslavija', 'Federal Republic', 'Vojislav Kotunica', 1792, 'YU');
INSERT INTO country VALUES ('KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035, 1953, 11168000, 56.5, 5121.00, 5670.00, 'Kâmpuchéa', 'Constitutional Monarchy', 'Norodom Sihanouk', 1800, 'KH');
INSERT INTO country VALUES ('CMR', 'Cameroon', 'Africa', 'Central Africa', 475442, 1960, 15085000, 54.799999, 9174.00, 8596.00, 'Cameroun/Cameroon', 'Republic', 'Paul Biya', 1804, 'CM');
INSERT INTO country VALUES ('CAN', 'Canada', 'North America', 'North America', 9970610, 1867, 31147000, 79.400002, 598862.00, 625626.00, 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 1822, 'CA');
INSERT INTO country VALUES ('CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033, 1975, 428000, 68.900002, 435.00, 420.00, 'Cabo Verde', 'Republic', 'António Mascarenhas Monteiro', 1859, 'CV');
INSERT INTO country VALUES ('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900, 1991, 16223000, 63.200001, 24375.00, 23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ');
INSERT INTO country VALUES ('KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367, 1963, 30080000, 48, 9217.00, 10241.00, 'Kenya', 'Republic', 'Daniel arap Moi', 1881, 'KE');
INSERT INTO country VALUES ('CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984, 1960, 3615000, 44, 1054.00, 993.00, 'Centrafrique/Bê-Afrîka', 'Republic', 'Ange-Félix Patassé', 1889, 'CF');
INSERT INTO country VALUES ('CHN', 'China', 'Asia', 'Eastern Asia', 9572900, -1523, 1277558000, 71.400002, 982268.00, 917719.00, 'Zhongquo', 'People''s Republic', 'Jiang Zemin', 1891, 'CN');
INSERT INTO country VALUES ('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900, 1991, 4699000, 63.400002, 1626.00, 1767.00, 'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG');
INSERT INTO country VALUES ('KIR', 'Kiribati', 'Oceania', 'Micronesia', 726, 1979, 83000, 59.799999, 40.70, NULL, 'Kiribati', 'Republic', 'Teburoro Tito', 2256, 'KI');
INSERT INTO country VALUES ('COL', 'Colombia', 'South America', 'South America', 1138914, 1810, 42321000, 70.300003, 102896.00, 105116.00, 'Colombia', 'Republic', 'Andrés Pastrana Arango', 2257, 'CO');
INSERT INTO country VALUES ('COM', 'Comoros', 'Africa', 'Eastern Africa', 1862, 1975, 578000, 60, 4401.00, 4361.00, 'Komori/Comores', 'Republic', 'Azali Assoumani', 2295, 'KM');
INSERT INTO country VALUES ('COG', 'Congo', 'Africa', 'Central Africa', 342000, 1960, 2943000, 47.400002, 2108.00, 2287.00, 'Congo', 'Republic', 'Denis Sassou-Nguesso', 2296, 'CG');
INSERT INTO country VALUES ('COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858, 1960, 51654000, 48.799999, 6964.00, 2474.00, 'République Démocratique du Congo', 'Republic', 'Joseph Kabila', 2298, 'CD');
INSERT INTO country VALUES ('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14, NULL, 600, NULL, 0.00, NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC');
INSERT INTO country VALUES ('PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538, 1948, 24039000, 70.699997, 5332.00, NULL, 'Choson Minjujuui In´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', 2318, 'KP');
INSERT INTO country VALUES ('KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434, 1948, 46844000, 74.400002, 320749.00, 442544.00, 'Taehan Minguk (Namhan)', 'Republic', 'Kim Dae-jung', 2331, 'KR');
INSERT INTO country VALUES ('GRC', 'Greece', 'Europe', 'Southern Europe', 131626, 1830, 10545700, 78.400002, 120724.00, 119946.00, 'Elláda', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR');
INSERT INTO country VALUES ('HRV', 'Croatia', 'Europe', 'Southern Europe', 56538, 1991, 4473000, 73.699997, 20208.00, 19300.00, 'Hrvatska', 'Republic', 'tipe Mesic', 2409, 'HR');
INSERT INTO country VALUES ('CUB', 'Cuba', 'North America', 'Caribbean', 110861, 1902, 11201000, 76.199997, 17843.00, 18862.00, 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', 2413, 'CU');
INSERT INTO country VALUES ('KWT', 'Kuwait', 'Asia', 'Middle East', 17818, 1961, 1972000, 76.099998, 27037.00, 30373.00, 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 2429, 'KW');
INSERT INTO country VALUES ('CYP', 'Cyprus', 'Asia', 'Middle East', 9251, 1960, 754700, 76.699997, 9333.00, 8246.00, 'Kýpros/Kibris', 'Republic', 'Glafkos Klerides', 2430, 'CY');
INSERT INTO country VALUES ('LAO', 'Laos', 'Asia', 'Southeast Asia', 236800, 1953, 5433000, 53.099998, 1292.00, 1746.00, 'Lao', 'Republic', 'Khamtay Siphandone', 2432, 'LA');
INSERT INTO country VALUES ('LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589, 1991, 2424200, 68.400002, 6398.00, 5639.00, 'Latvija', 'Republic', 'Vaira Vike-Freiberga', 2434, 'LV');
INSERT INTO country VALUES ('LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355, 1966, 2153000, 50.799999, 1061.00, 1161.00, 'Lesotho', 'Constitutional Monarchy', 'Letsie III', 2437, 'LS');
INSERT INTO country VALUES ('LBN', 'Lebanon', 'Asia', 'Middle East', 10400, 1941, 3282000, 71.300003, 17121.00, 15129.00, 'Lubnan', 'Republic', 'Émile Lahoud', 2438, 'LB');
INSERT INTO country VALUES ('LBR', 'Liberia', 'Africa', 'Western Africa', 111369, 1847, 3154000, 51, 2012.00, NULL, 'Liberia', 'Republic', 'Charles Taylor', 2440, 'LR');
INSERT INTO country VALUES ('LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540, 1951, 5605000, 75.5, 44806.00, 40562.00, 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 2441, 'LY');
INSERT INTO country VALUES ('LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160, 1806, 32300, 78.800003, 1119.00, 1084.00, 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI');
INSERT INTO country VALUES ('LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301, 1991, 3698500, 69.099998, 10692.00, 9585.00, 'Lietuva', 'Republic', 'Valdas Adamkus', 2447, 'LT');
INSERT INTO country VALUES ('LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586, 1867, 435700, 77.099998, 16321.00, 15519.00, 'Luxembourg/Lëtzebuerg', 'Constitutional Monarchy', 'Henri', 2452, 'LU');
INSERT INTO country VALUES ('ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000, NULL, 293000, 49.799999, 60.00, NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH');
INSERT INTO country VALUES ('MAC', 'Macao', 'Asia', 'Eastern Asia', 18, NULL, 473000, 81.599998, 5749.00, 5940.00, 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO');
INSERT INTO country VALUES ('MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041, 1960, 15942000, 55, 3750.00, 3545.00, 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', 2455, 'MG');
INSERT INTO country VALUES ('MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713, 1991, 2024000, 73.800003, 1694.00, 1915.00, 'Makedonija', 'Republic', 'Boris Trajkovski', 2460, 'MK');
INSERT INTO country VALUES ('MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484, 1964, 10925000, 37.599998, 1687.00, 2527.00, 'Malawi', 'Republic', 'Bakili Muluzi', 2462, 'MW');
INSERT INTO country VALUES ('MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298, 1965, 286000, 62.200001, 199.00, NULL, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 2463, 'MV');
INSERT INTO country VALUES ('MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758, 1957, 22244000, 70.800003, 69213.00, 97884.00, 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 2464, 'MY');
INSERT INTO country VALUES ('MLI', 'Mali', 'Africa', 'Western Africa', 1240192, 1960, 11234000, 46.700001, 2642.00, 2453.00, 'Mali', 'Republic', 'Alpha Oumar Konaré', 2482, 'ML');
INSERT INTO country VALUES ('MLT', 'Malta', 'Europe', 'Southern Europe', 316, 1964, 380200, 77.900002, 3512.00, 3338.00, 'Malta', 'Republic', 'Guido de Marco', 2484, 'MT');
INSERT INTO country VALUES ('MAR', 'Morocco', 'Africa', 'Northern Africa', 446550, 1956, 28351000, 69.099998, 36124.00, 33514.00, 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 2486, 'MA');
INSERT INTO country VALUES ('MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181, 1990, 64000, 65.5, 97.00, NULL, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', 2507, 'MH');
INSERT INTO country VALUES ('MTQ', 'Martinique', 'North America', 'Caribbean', 1102, NULL, 395000, 78.300003, 2731.00, 2559.00, 'Martinique', 'Overseas Department of France', 'Jacques Chirac', 2508, 'MQ');
INSERT INTO country VALUES ('MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520, 1960, 2670000, 50.799999, 998.00, 1081.00, 'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould Sid´Ahmad Taya', 2509, 'MR');
INSERT INTO country VALUES ('MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040, 1968, 1158000, 71, 4251.00, 4186.00, 'Mauritius', 'Republic', 'Cassam Uteem', 2511, 'MU');
INSERT INTO country VALUES ('MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte', 'Territorial Collectivity of France', 'Jacques Chirac', 2514, 'YT');
INSERT INTO country VALUES ('MEX', 'Mexico', 'North America', 'Central America', 1958201, 1810, 98881000, 71.5, 414972.00, 401461.00, 'México', 'Federal Republic', 'Vicente Fox Quesada', 2515, 'MX');
INSERT INTO country VALUES ('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702, 1990, 119000, 68.599998, 212.00, NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM');
INSERT INTO country VALUES ('MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova', 'Republic', 'Vladimir Voronin', 2690, 'MD');
INSERT INTO country VALUES ('MCO', 'Monaco', 'Europe', 'Western Europe', 1.5, 1861, 34000, 78.800003, 776.00, NULL, 'Monaco', 'Constitutional Monarchy', 'Rainier III', 2695, 'MC');
INSERT INTO country VALUES ('MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500, 1921, 2662000, 67.300003, 1043.00, 933.00, 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', 2696, 'MN');
INSERT INTO country VALUES ('MSR', 'Montserrat', 'North America', 'Caribbean', 102, NULL, 11000, 78, 109.00, NULL, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', 2697, 'MS');
INSERT INTO country VALUES ('MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590, 1975, 19680000, 37.5, 2891.00, 2711.00, 'Moçambique', 'Republic', 'Joaquím A. Chissano', 2698, 'MZ');
INSERT INTO country VALUES ('MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578, 1948, 45611000, 54.900002, 180375.00, 171028.00, 'Myanma Pye', 'Republic', 'kenraali Than Shwe', 2710, 'MM');
INSERT INTO country VALUES ('NAM', 'Namibia', 'Africa', 'Southern Africa', 824292, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', 2726, 'NA');
INSERT INTO country VALUES ('NRU', 'Nauru', 'Oceania', 'Micronesia', 21, 1968, 12000, 60.799999, 197.00, NULL, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', 2728, 'NR');
INSERT INTO country VALUES ('NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181, 1769, 23930000, 57.799999, 4768.00, 4837.00, 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 2729, 'NP');
INSERT INTO country VALUES ('NIC', 'Nicaragua', 'North America', 'Central America', 130000, 1838, 5074000, 68.699997, 1988.00, 2023.00, 'Nicaragua', 'Republic', 'Arnoldo Alemán Lacayo', 2734, 'NI');
INSERT INTO country VALUES ('NER', 'Niger', 'Africa', 'Western Africa', 1267000, 1960, 10730000, 41.299999, 1706.00, 1580.00, 'Niger', 'Republic', 'Mamadou Tandja', 2738, 'NE');
INSERT INTO country VALUES ('NGA', 'Nigeria', 'Africa', 'Western Africa', 923768, 1960, 111506000, 51.599998, 65707.00, 58623.00, 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 2754, 'NG');
INSERT INTO country VALUES ('NIU', 'Niue', 'Oceania', 'Polynesia', 260, NULL, 2000, NULL, 0.00, NULL, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 2805, 'NU');
INSERT INTO country VALUES ('NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36, NULL, 2000, NULL, 0.00, NULL, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', 2806, 'NF');
INSERT INTO country VALUES ('NOR', 'Norway', 'Europe', 'Nordic Countries', 323877, 1905, 4478500, 78.699997, 145895.00, 153370.00, 'Norge', 'Constitutional Monarchy', 'Harald V', 2807, 'NO');
INSERT INTO country VALUES ('CIV', 'Côte dIvoire', 'Africa', 'Western Africa', 322463, 1960, 14786000, 45.200001, 11345.00, 10285.00, 'Côte dIvoire', 'Republic', 'Laurent Gbagbo', 2814, 'CI');
INSERT INTO country VALUES ('OMN', 'Oman', 'Asia', 'Middle East', 309500, 1951, 2542000, 71.800003, 16904.00, 16153.00, '´Uman', 'Monarchy (Sultanate)', 'Qabus ibn Sa´id', 2821, 'OM');
INSERT INTO country VALUES ('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095, 1947, 156483000, 61.099998, 61289.00, 58549.00, 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK');
INSERT INTO country VALUES ('PLW', 'Palau', 'Oceania', 'Micronesia', 459, 1994, 19000, 68.599998, 105.00, NULL, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', 2881, 'PW');
INSERT INTO country VALUES ('PAN', 'Panama', 'North America', 'Central America', 75517, 1903, 2856000, 75.5, 9131.00, 8700.00, 'Panamá', 'Republic', 'Mireya Elisa Moscoso Rodríguez', 2882, 'PA');
INSERT INTO country VALUES ('PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840, 1975, 4807000, 63.099998, 4988.00, 6328.00, 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', 2884, 'PG');
INSERT INTO country VALUES ('PRY', 'Paraguay', 'South America', 'South America', 406752, 1811, 5496000, 73.699997, 8444.00, 9555.00, 'Paraguay', 'Republic', 'Luis Ángel González Macchi', 2885, 'PY');
INSERT INTO country VALUES ('PER', 'Peru', 'South America', 'South America', 1285216, 1821, 25662000, 70, 64140.00, 65186.00, 'Perú/Piruw', 'Republic', 'Valentin Paniagua Corazao', 2890, 'PE');
INSERT INTO country VALUES ('PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49, NULL, 50, NULL, 0.00, NULL, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', 2912, 'PN');
INSERT INTO country VALUES ('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464, NULL, 78000, 75.5, 0.00, NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP');
INSERT INTO country VALUES ('PRT', 'Portugal', 'Europe', 'Southern Europe', 91982, 1143, 9997600, 75.800003, 105954.00, 102133.00, 'Portugal', 'Republic', 'Jorge Sampãio', 2914, 'PT');
INSERT INTO country VALUES ('PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875, NULL, 3869000, 75.599998, 34100.00, 32100.00, 'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', 2919, 'PR');
INSERT INTO country VALUES ('POL', 'Poland', 'Europe', 'Eastern Europe', 323250, 1918, 38653600, 73.199997, 151697.00, 135636.00, 'Polska', 'Republic', 'Aleksander Kwasniewski', 2928, 'PL');
INSERT INTO country VALUES ('GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051, 1968, 453000, 53.599998, 283.00, 542.00, 'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', 2972, 'GQ');
INSERT INTO country VALUES ('QAT', 'Qatar', 'Asia', 'Middle East', 11000, 1971, 599000, 72.400002, 9472.00, 8920.00, 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', 2973, 'QA');
INSERT INTO country VALUES ('FRA', 'France', 'Europe', 'Western Europe', 551500, 843, 59225700, 78.800003, 1424285.00, 1392448.00, 'France', 'Republic', 'Jacques Chirac', 2974, 'FR');
INSERT INTO country VALUES ('GUF', 'French Guiana', 'South America', 'South America', 90000, NULL, 181000, 76.099998, 681.00, NULL, 'Guyane française', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF');
INSERT INTO country VALUES ('PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000, NULL, 235000, 74.800003, 818.00, 781.00, 'Polynésie française', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3016, 'PF');
INSERT INTO country VALUES ('REU', 'Réunion', 'Africa', 'Eastern Africa', 2510, NULL, 699000, 72.699997, 8287.00, 7988.00, 'Réunion', 'Overseas Department of France', 'Jacques Chirac', 3017, 'RE');
INSERT INTO country VALUES ('ROM', 'Romania', 'Europe', 'Eastern Europe', 238391, 1878, 22455500, 69.900002, 38158.00, 34843.00, 'România', 'Republic', 'Ion Iliescu', 3018, 'RO');
INSERT INTO country VALUES ('RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338, 1962, 7733000, 39.299999, 2036.00, 1863.00, 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', 3047, 'RW');
INSERT INTO country VALUES ('SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964, 836, 8861400, 79.599998, 226492.00, 227757.00, 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 3048, 'SE');
INSERT INTO country VALUES ('SHN', 'Saint Helena', 'Africa', 'Western Africa', 314, NULL, 6000, 76.800003, 0.00, NULL, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', 3063, 'SH');
INSERT INTO country VALUES ('KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261, 1983, 38000, 70.699997, 299.00, NULL, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 3064, 'KN');
INSERT INTO country VALUES ('LCA', 'Saint Lucia', 'North America', 'Caribbean', 622, 1979, 154000, 72.300003, 571.00, NULL, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', 3065, 'LC');
INSERT INTO country VALUES ('VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388, 1979, 114000, 72.300003, 285.00, NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 3066, 'VC');
INSERT INTO country VALUES ('SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242, NULL, 7000, 77.599998, 0.00, NULL, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', 3067, 'PM');
INSERT INTO country VALUES ('DEU', 'Germany', 'Europe', 'Western Europe', 357022, 1955, 82164700, 77.400002, 2133367.00, 2102826.00, 'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE');
INSERT INTO country VALUES ('SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896, 1978, 444000, 71.300003, 182.00, 220.00, 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', 3161, 'SB');
INSERT INTO country VALUES ('ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618, 1964, 9169000, 37.200001, 3377.00, 3922.00, 'Zambia', 'Republic', 'Frederick Chiluba', 3162, 'ZM');
INSERT INTO country VALUES ('WSM', 'Samoa', 'Oceania', 'Polynesia', 2831, 1962, 180000, 69.199997, 141.00, 157.00, 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', 3169, 'WS');
INSERT INTO country VALUES ('SMR', 'San Marino', 'Europe', 'Southern Europe', 61, 885, 27000, 81.099998, 510.00, NULL, 'San Marino', 'Republic', NULL, 3171, 'SM');
INSERT INTO country VALUES ('STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964, 1975, 147000, 65.300003, 6.00, NULL, 'São Tomé e Príncipe', 'Republic', 'Miguel Trovoada', 3172, 'ST');
INSERT INTO country VALUES ('SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690, 1932, 21607000, 67.800003, 137635.00, 146171.00, 'Al-´Arabiya as-Sa´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-Sa´ud', 3173, 'SA');
INSERT INTO country VALUES ('SEN', 'Senegal', 'Africa', 'Western Africa', 196722, 1960, 9481000, 62.200001, 4787.00, 4542.00, 'Sénégal/Sounougal', 'Republic', 'Abdoulaye Wade', 3198, 'SN');
INSERT INTO country VALUES ('SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455, 1976, 77000, 70.400002, 536.00, 539.00, 'Sesel/Seychelles', 'Republic', 'France-Albert René', 3206, 'SC');
INSERT INTO country VALUES ('SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740, 1961, 4854000, 45.299999, 746.00, 858.00, 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 3207, 'SL');
INSERT INTO country VALUES ('SGP', 'Singapore', 'Asia', 'Southeast Asia', 618, 1965, 3567000, 80.099998, 86503.00, 96318.00, 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 3208, 'SG');
INSERT INTO country VALUES ('SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012, 1993, 5398700, 73.699997, 20594.00, 19452.00, 'Slovensko', 'Republic', 'Rudolf Schuster', 3209, 'SK');
INSERT INTO country VALUES ('SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256, 1991, 1987800, 74.900002, 19756.00, 18202.00, 'Slovenija', 'Republic', 'Milan Kucan', 3212, 'SI');
INSERT INTO country VALUES ('SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657, 1960, 10097000, 46.200001, 935.00, NULL, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', 3214, 'SO');
INSERT INTO country VALUES ('LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610, 1948, 18827000, 71.800003, 15706.00, 15091.00, 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 3217, 'LK');
INSERT INTO country VALUES ('SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813, 1956, 29490000, 56.599998, 10162.00, NULL, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 3225, 'SD');
INSERT INTO country VALUES ('FIN', 'Finland', 'Europe', 'Nordic Countries', 338145, 1917, 5171300, 77.400002, 121914.00, 119833.00, 'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI');
INSERT INTO country VALUES ('SUR', 'Suriname', 'South America', 'South America', 163265, 1975, 417000, 71.400002, 870.00, 706.00, 'Suriname', 'Republic', 'Ronald Venetiaan', 3243, 'SR');
INSERT INTO country VALUES ('SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364, 1968, 1008000, 40.400002, 1206.00, 1312.00, 'kaNgwane', 'Monarchy', 'Mswati III', 3244, 'SZ');
INSERT INTO country VALUES ('CHE', 'Switzerland', 'Europe', 'Western Europe', 41284, 1499, 7160400, 79.599998, 264478.00, 256092.00, 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH');
INSERT INTO country VALUES ('SYR', 'Syria', 'Asia', 'Middle East', 185180, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic', 'Bashar al-Assad', 3250, 'SY');
INSERT INTO country VALUES ('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100, 1991, 6188000, 64.099998, 1990.00, 1056.00, 'Toçikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ');
INSERT INTO country VALUES ('TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188, 1945, 22256000, 76.400002, 256254.00, 263451.00, 'Tai-wan', 'Republic', 'Chen Shui-bian', 3263, 'TW');
INSERT INTO country VALUES ('TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749, 1961, 33517000, 52.299999, 8005.00, 7388.00, 'Tanzania', 'Republic', 'Benjamin William Mkapa', 3306, 'TZ');
INSERT INTO country VALUES ('DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 3315, 'DK');
INSERT INTO country VALUES ('THA', 'Thailand', 'Asia', 'Southeast Asia', 513115, 1350, 61399000, 68.599998, 116416.00, 153907.00, 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 3320, 'TH');
INSERT INTO country VALUES ('TGO', 'Togo', 'Africa', 'Western Africa', 56785, 1960, 4629000, 54.700001, 1449.00, 1400.00, 'Togo', 'Republic', 'Gnassingbé Eyadéma', 3332, 'TG');
INSERT INTO country VALUES ('TKL', 'Tokelau', 'Oceania', 'Polynesia', 12, NULL, 2000, NULL, 0.00, NULL, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 3333, 'TK');
INSERT INTO country VALUES ('TON', 'Tonga', 'Oceania', 'Polynesia', 650, 1970, 99000, 67.900002, 146.00, 170.00, 'Tonga', 'Monarchy', 'Taufa''ahau Tupou IV', 3334, 'TO');
INSERT INTO country VALUES ('TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130, 1962, 1295000, 68, 6232.00, 5867.00, 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 3336, 'TT');
INSERT INTO country VALUES ('TCD', 'Chad', 'Africa', 'Central Africa', 1284000, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad', 'Republic', 'Idriss Déby', 3337, 'TD');
INSERT INTO country VALUES ('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866, 1993, 10278100, 74.5, 55017.00, 52037.00, '¸esko', 'Republic', 'Václav Havel', 3339, 'CZ');
INSERT INTO country VALUES ('TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610, 1956, 9586000, 73.699997, 20026.00, 18898.00, 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 3349, 'TN');
INSERT INTO country VALUES ('TUR', 'Turkey', 'Asia', 'Middle East', 774815, 1923, 66591000, 71, 210721.00, 189122.00, 'Türkiye', 'Republic', 'Ahmet Necdet Sezer', 3358, 'TR');
INSERT INTO country VALUES ('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100, 1991, 4459000, 60.900002, 4397.00, 2000.00, 'Türkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM');
INSERT INTO country VALUES ('TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430, NULL, 17000, 73.300003, 96.00, NULL, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 3423, 'TC');
INSERT INTO country VALUES ('TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26, 1978, 12000, 66.300003, 6.00, NULL, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', 3424, 'TV');
INSERT INTO country VALUES ('UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038, 1962, 21778000, 42.900002, 6313.00, 6887.00, 'Uganda', 'Republic', 'Yoweri Museveni', 3425, 'UG');
INSERT INTO country VALUES ('UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700, 1991, 50456000, 66, 42168.00, 49677.00, 'Ukrajina', 'Republic', 'Leonid Kutma', 3426, 'UA');
INSERT INTO country VALUES ('HUN', 'Hungary', 'Europe', 'Eastern Europe', 93030, 1918, 10043200, 71.400002, 48267.00, 45914.00, 'Magyarország', 'Republic', 'Ferenc Mádl', 3483, 'HU');
INSERT INTO country VALUES ('URY', 'Uruguay', 'South America', 'South America', 175016, 1828, 3337000, 75.199997, 20831.00, 19967.00, 'Uruguay', 'Republic', 'Jorge Batlle Ibáñez', 3492, 'UY');
INSERT INTO country VALUES ('NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575, NULL, 214000, 72.800003, 3563.00, NULL, 'Nouvelle-Calédonie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3493, 'NC');
INSERT INTO country VALUES ('NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534, 1907, 3862000, 77.800003, 54669.00, 64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', 3499, 'NZ');
INSERT INTO country VALUES ('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400, 1991, 24318000, 63.700001, 14194.00, 21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ');
INSERT INTO country VALUES ('BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600, 1991, 10236000, 68, 13714.00, NULL, 'Belarus', 'Republic', 'Aljaksandr Lukaenka', 3520, 'BY');
INSERT INTO country VALUES ('WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3536, 'WF');
INSERT INTO country VALUES ('VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189, 1980, 190000, 60.599998, 261.00, 246.00, 'Vanuatu', 'Republic', 'John Bani', 3537, 'VU');
INSERT INTO country VALUES ('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.40000001, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA');
INSERT INTO country VALUES ('VEN', 'Venezuela', 'South America', 'South America', 912050, 1811, 24170000, 73.099998, 95023.00, 88434.00, 'Venezuela', 'Federal Republic', 'Hugo Chávez Frías', 3539, 'VE');
INSERT INTO country VALUES ('RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400, 1991, 146934000, 67.199997, 276608.00, 442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 3580, 'RU');
INSERT INTO country VALUES ('VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689, 1945, 79832000, 69.300003, 21929.00, 22834.00, 'Viêt Nam', 'Socialistic Republic', 'Trân Duc Luong', 3770, 'VN');
INSERT INTO country VALUES ('EST', 'Estonia', 'Europe', 'Baltic Countries', 45227, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE');
INSERT INTO country VALUES ('USA', 'United States', 'North America', 'North America', 9363520, 1776, 278357000, 77.099998, 8510700.00, 8110900.00, 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US');
INSERT INTO country VALUES ('VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347, NULL, 93000, 78.099998, 0.00, NULL, 'Virgin Islands of the United States', 'US Territory', 'George W. Bush', 4067, 'VI');
INSERT INTO country VALUES ('ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757, 1980, 11669000, 37.799999, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Robert G. Mugabe', 4068, 'ZW');
INSERT INTO country VALUES ('PSE', 'Palestine', 'Asia', 'Middle East', 6257, NULL, 3101000, 71.400002, 4173.00, NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS');
INSERT INTO country VALUES ('ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000, NULL, 0, NULL, 0.00, NULL, '', 'Co-administrated', '', NULL, 'AQ');
INSERT INTO country VALUES ('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59, NULL, 0, NULL, 0.00, NULL, 'Bouvetøya', 'Dependent Territory of Norway', 'Harald V', NULL, 'BV');
INSERT INTO country VALUES ('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78, NULL, 0, NULL, 0.00, NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO');
INSERT INTO country VALUES ('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903, NULL, 0, NULL, 0.00, NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'GS');
INSERT INTO country VALUES ('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359, NULL, 0, NULL, 0.00, NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM');
INSERT INTO country VALUES ('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780, NULL, 0, NULL, 0.00, NULL, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF');
INSERT INTO country VALUES ('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16, NULL, 0, NULL, 0.00, NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM');

--
-- Data for Name: countrylanguage; Type: TABLE DATA; Schema: public; Owner: chriskl
--
INSERT INTO countrylanguage VALUES ('AFG', 'Pashto', true, 52.400002);
INSERT INTO countrylanguage VALUES ('NLD', 'Dutch', true, 95.599998);
INSERT INTO countrylanguage VALUES ('ANT', 'Papiamento', true, 86.199997);
INSERT INTO countrylanguage VALUES ('ALB', 'Albaniana', true, 97.900002);
INSERT INTO countrylanguage VALUES ('DZA', 'Arabic', true, 86);
INSERT INTO countrylanguage VALUES ('ASM', 'Samoan', true, 90.599998);
INSERT INTO countrylanguage VALUES ('AND', 'Spanish', false, 44.599998);
INSERT INTO countrylanguage VALUES ('AGO', 'Ovimbundu', false, 37.200001);
INSERT INTO countrylanguage VALUES ('AIA', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('ATG', 'Creole English', false, 95.699997);
INSERT INTO countrylanguage VALUES ('ARE', 'Arabic', true, 42);
INSERT INTO countrylanguage VALUES ('ARG', 'Spanish', true, 96.800003);
INSERT INTO countrylanguage VALUES ('ARM', 'Armenian', true, 93.400002);
INSERT INTO countrylanguage VALUES ('ABW', 'Papiamento', false, 76.699997);
INSERT INTO countrylanguage VALUES ('AUS', 'English', true, 81.199997);
INSERT INTO countrylanguage VALUES ('AZE', 'Azerbaijani', true, 89);
INSERT INTO countrylanguage VALUES ('BHS', 'Creole English', false, 89.699997);
INSERT INTO countrylanguage VALUES ('BHR', 'Arabic', true, 67.699997);
INSERT INTO countrylanguage VALUES ('BGD', 'Bengali', true, 97.699997);
INSERT INTO countrylanguage VALUES ('BRB', 'Bajan', false, 95.099998);
INSERT INTO countrylanguage VALUES ('BEL', 'Dutch', true, 59.200001);
INSERT INTO countrylanguage VALUES ('BLZ', 'English', true, 50.799999);
INSERT INTO countrylanguage VALUES ('BEN', 'Fon', false, 39.799999);
INSERT INTO countrylanguage VALUES ('BMU', 'English', true, 100);
INSERT INTO countrylanguage VALUES ('BTN', 'Dzongkha', true, 50);
INSERT INTO countrylanguage VALUES ('BOL', 'Spanish', true, 87.699997);
INSERT INTO countrylanguage VALUES ('BIH', 'Serbo-Croatian', true, 99.199997);
INSERT INTO countrylanguage VALUES ('BWA', 'Tswana', false, 75.5);
INSERT INTO countrylanguage VALUES ('BRA', 'Portuguese', true, 97.5);
INSERT INTO countrylanguage VALUES ('GBR', 'English', true, 97.300003);
INSERT INTO countrylanguage VALUES ('VGB', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('BRN', 'Malay', true, 45.5);
INSERT INTO countrylanguage VALUES ('BGR', 'Bulgariana', true, 83.199997);
INSERT INTO countrylanguage VALUES ('BFA', 'Mossi', false, 50.200001);
INSERT INTO countrylanguage VALUES ('BDI', 'Kirundi', true, 98.099998);
INSERT INTO countrylanguage VALUES ('CYM', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('CHL', 'Spanish', true, 89.699997);
INSERT INTO countrylanguage VALUES ('COK', 'Maori', true, 0);
INSERT INTO countrylanguage VALUES ('CRI', 'Spanish', true, 97.5);
INSERT INTO countrylanguage VALUES ('DJI', 'Somali', false, 43.900002);
INSERT INTO countrylanguage VALUES ('DMA', 'Creole English', false, 100);
INSERT INTO countrylanguage VALUES ('DOM', 'Spanish', true, 98);
INSERT INTO countrylanguage VALUES ('ECU', 'Spanish', true, 93);
INSERT INTO countrylanguage VALUES ('EGY', 'Arabic', true, 98.800003);
INSERT INTO countrylanguage VALUES ('SLV', 'Spanish', true, 100);
INSERT INTO countrylanguage VALUES ('ERI', 'Tigrinja', true, 49.099998);
INSERT INTO countrylanguage VALUES ('ESP', 'Spanish', true, 74.400002);
INSERT INTO countrylanguage VALUES ('ZAF', 'Zulu', true, 22.700001);
INSERT INTO countrylanguage VALUES ('ETH', 'Oromo', false, 31);
INSERT INTO countrylanguage VALUES ('FLK', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('FJI', 'Fijian', true, 50.799999);
INSERT INTO countrylanguage VALUES ('PHL', 'Pilipino', true, 29.299999);
INSERT INTO countrylanguage VALUES ('FRO', 'Faroese', true, 100);
INSERT INTO countrylanguage VALUES ('GAB', 'Fang', false, 35.799999);
INSERT INTO countrylanguage VALUES ('GMB', 'Malinke', false, 34.099998);
INSERT INTO countrylanguage VALUES ('GEO', 'Georgiana', true, 71.699997);
INSERT INTO countrylanguage VALUES ('GHA', 'Akan', false, 52.400002);
INSERT INTO countrylanguage VALUES ('GIB', 'English', true, 88.900002);
INSERT INTO countrylanguage VALUES ('GRD', 'Creole English', false, 100);
INSERT INTO countrylanguage VALUES ('GRL', 'Greenlandic', true, 87.5);
INSERT INTO countrylanguage VALUES ('GLP', 'Creole French', false, 95);
INSERT INTO countrylanguage VALUES ('GUM', 'English', true, 37.5);
INSERT INTO countrylanguage VALUES ('GTM', 'Spanish', true, 64.699997);
INSERT INTO countrylanguage VALUES ('GIN', 'Ful', false, 38.599998);
INSERT INTO countrylanguage VALUES ('GNB', 'Crioulo', false, 36.400002);
INSERT INTO countrylanguage VALUES ('GUY', 'Creole English', false, 96.400002);
INSERT INTO countrylanguage VALUES ('HTI', 'Haiti Creole', false, 100);
INSERT INTO countrylanguage VALUES ('HND', 'Spanish', true, 97.199997);
INSERT INTO countrylanguage VALUES ('HKG', 'Canton Chinese', false, 88.699997);
INSERT INTO countrylanguage VALUES ('SJM', 'Norwegian', true, 0);
INSERT INTO countrylanguage VALUES ('IDN', 'Javanese', false, 39.400002);
INSERT INTO countrylanguage VALUES ('IND', 'Hindi', true, 39.900002);
INSERT INTO countrylanguage VALUES ('IRQ', 'Arabic', true, 77.199997);
INSERT INTO countrylanguage VALUES ('IRN', 'Persian', true, 45.700001);
INSERT INTO countrylanguage VALUES ('IRL', 'English', true, 98.400002);
INSERT INTO countrylanguage VALUES ('ISL', 'Icelandic', true, 95.699997);
INSERT INTO countrylanguage VALUES ('ISR', 'Hebrew', true, 63.099998);
INSERT INTO countrylanguage VALUES ('ITA', 'Italian', true, 94.099998);
INSERT INTO countrylanguage VALUES ('TMP', 'Sunda', false, 0);
INSERT INTO countrylanguage VALUES ('AUT', 'German', true, 92);
INSERT INTO countrylanguage VALUES ('JAM', 'Creole English', false, 94.199997);
INSERT INTO countrylanguage VALUES ('JPN', 'Japanese', true, 99.099998);
INSERT INTO countrylanguage VALUES ('YEM', 'Arabic', true, 99.599998);
INSERT INTO countrylanguage VALUES ('JOR', 'Arabic', true, 97.900002);
INSERT INTO countrylanguage VALUES ('CXR', 'Chinese', false, 0);
INSERT INTO countrylanguage VALUES ('YUG', 'Serbo-Croatian', true, 75.199997);
INSERT INTO countrylanguage VALUES ('KHM', 'Khmer', true, 88.599998);
INSERT INTO countrylanguage VALUES ('CMR', 'Fang', false, 19.700001);
INSERT INTO countrylanguage VALUES ('CAN', 'English', true, 60.400002);
INSERT INTO countrylanguage VALUES ('CPV', 'Crioulo', false, 100);
INSERT INTO countrylanguage VALUES ('KAZ', 'Kazakh', true, 46);
INSERT INTO countrylanguage VALUES ('KEN', 'Kikuyu', false, 20.9);
INSERT INTO countrylanguage VALUES ('CAF', 'Gbaya', false, 23.799999);
INSERT INTO countrylanguage VALUES ('CHN', 'Chinese', true, 92);
INSERT INTO countrylanguage VALUES ('KGZ', 'Kirgiz', true, 59.700001);
INSERT INTO countrylanguage VALUES ('KIR', 'Kiribati', true, 98.900002);
INSERT INTO countrylanguage VALUES ('COL', 'Spanish', true, 99);
INSERT INTO countrylanguage VALUES ('COM', 'Comorian', true, 75);
INSERT INTO countrylanguage VALUES ('COG', 'Kongo', false, 51.5);
INSERT INTO countrylanguage VALUES ('COD', 'Luba', false, 18);
INSERT INTO countrylanguage VALUES ('CCK', 'Malay', false, 0);
INSERT INTO countrylanguage VALUES ('PRK', 'Korean', true, 99.900002);
INSERT INTO countrylanguage VALUES ('KOR', 'Korean', true, 99.900002);
INSERT INTO countrylanguage VALUES ('GRC', 'Greek', true, 98.5);
INSERT INTO countrylanguage VALUES ('HRV', 'Serbo-Croatian', true, 95.900002);
INSERT INTO countrylanguage VALUES ('CUB', 'Spanish', true, 100);
INSERT INTO countrylanguage VALUES ('KWT', 'Arabic', true, 78.099998);
INSERT INTO countrylanguage VALUES ('CYP', 'Greek', true, 74.099998);
INSERT INTO countrylanguage VALUES ('LAO', 'Lao', true, 67.199997);
INSERT INTO countrylanguage VALUES ('LVA', 'Latvian', true, 55.099998);
INSERT INTO countrylanguage VALUES ('LSO', 'Sotho', true, 85);
INSERT INTO countrylanguage VALUES ('LBN', 'Arabic', true, 93);
INSERT INTO countrylanguage VALUES ('LBR', 'Kpelle', false, 19.5);
INSERT INTO countrylanguage VALUES ('LBY', 'Arabic', true, 96);
INSERT INTO countrylanguage VALUES ('LIE', 'German', true, 89);
INSERT INTO countrylanguage VALUES ('LTU', 'Lithuanian', true, 81.599998);
INSERT INTO countrylanguage VALUES ('LUX', 'Luxembourgish', true, 64.400002);
INSERT INTO countrylanguage VALUES ('ESH', 'Arabic', true, 100);
INSERT INTO countrylanguage VALUES ('MAC', 'Canton Chinese', false, 85.599998);
INSERT INTO countrylanguage VALUES ('MDG', 'Malagasy', true, 98.900002);
INSERT INTO countrylanguage VALUES ('MKD', 'Macedonian', true, 66.5);
INSERT INTO countrylanguage VALUES ('MWI', 'Chichewa', true, 58.299999);
INSERT INTO countrylanguage VALUES ('MDV', 'Dhivehi', true, 100);
INSERT INTO countrylanguage VALUES ('MYS', 'Malay', true, 58.400002);
INSERT INTO countrylanguage VALUES ('MLI', 'Bambara', false, 31.799999);
INSERT INTO countrylanguage VALUES ('MLT', 'Maltese', true, 95.800003);
INSERT INTO countrylanguage VALUES ('MAR', 'Arabic', true, 65);
INSERT INTO countrylanguage VALUES ('MHL', 'Marshallese', true, 96.800003);
INSERT INTO countrylanguage VALUES ('MTQ', 'Creole French', false, 96.599998);
INSERT INTO countrylanguage VALUES ('MRT', 'Hassaniya', false, 81.699997);
INSERT INTO countrylanguage VALUES ('MUS', 'Creole French', false, 70.599998);
INSERT INTO countrylanguage VALUES ('MYT', 'Mahoré', false, 41.900002);
INSERT INTO countrylanguage VALUES ('MEX', 'Spanish', true, 92.099998);
INSERT INTO countrylanguage VALUES ('FSM', 'Trukese', false, 41.599998);
INSERT INTO countrylanguage VALUES ('MDA', 'Romanian', true, 61.900002);
INSERT INTO countrylanguage VALUES ('MCO', 'French', true, 41.900002);
INSERT INTO countrylanguage VALUES ('MNG', 'Mongolian', true, 78.800003);
INSERT INTO countrylanguage VALUES ('MSR', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('MOZ', 'Makua', false, 27.799999);
INSERT INTO countrylanguage VALUES ('MMR', 'Burmese', true, 69);
INSERT INTO countrylanguage VALUES ('NAM', 'Ovambo', false, 50.700001);
INSERT INTO countrylanguage VALUES ('NRU', 'Nauru', true, 57.5);
INSERT INTO countrylanguage VALUES ('NPL', 'Nepali', true, 50.400002);
INSERT INTO countrylanguage VALUES ('NIC', 'Spanish', true, 97.599998);
INSERT INTO countrylanguage VALUES ('NER', 'Hausa', false, 53.099998);
INSERT INTO countrylanguage VALUES ('NGA', 'Joruba', false, 21.4);
INSERT INTO countrylanguage VALUES ('NIU', 'Niue', false, 0);
INSERT INTO countrylanguage VALUES ('NFK', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('NOR', 'Norwegian', true, 96.599998);
INSERT INTO countrylanguage VALUES ('CIV', 'Akan', false, 30);
INSERT INTO countrylanguage VALUES ('OMN', 'Arabic', true, 76.699997);
INSERT INTO countrylanguage VALUES ('PAK', 'Punjabi', false, 48.200001);
INSERT INTO countrylanguage VALUES ('PLW', 'Palau', true, 82.199997);
INSERT INTO countrylanguage VALUES ('PAN', 'Spanish', true, 76.800003);
INSERT INTO countrylanguage VALUES ('PNG', 'Papuan Languages', false, 78.099998);
INSERT INTO countrylanguage VALUES ('PRY', 'Spanish', true, 55.099998);
INSERT INTO countrylanguage VALUES ('PER', 'Spanish', true, 79.800003);
INSERT INTO countrylanguage VALUES ('PCN', 'Pitcairnese', false, 0);
INSERT INTO countrylanguage VALUES ('MNP', 'Philippene Languages', false, 34.099998);
INSERT INTO countrylanguage VALUES ('PRT', 'Portuguese', true, 99);
INSERT INTO countrylanguage VALUES ('PRI', 'Spanish', true, 51.299999);
INSERT INTO countrylanguage VALUES ('POL', 'Polish', true, 97.599998);
INSERT INTO countrylanguage VALUES ('GNQ', 'Fang', false, 84.800003);
INSERT INTO countrylanguage VALUES ('QAT', 'Arabic', true, 40.700001);
INSERT INTO countrylanguage VALUES ('FRA', 'French', true, 93.599998);
INSERT INTO countrylanguage VALUES ('GUF', 'Creole French', false, 94.300003);
INSERT INTO countrylanguage VALUES ('PYF', 'Tahitian', false, 46.400002);
INSERT INTO countrylanguage VALUES ('REU', 'Creole French', false, 91.5);
INSERT INTO countrylanguage VALUES ('ROM', 'Romanian', true, 90.699997);
INSERT INTO countrylanguage VALUES ('RWA', 'Rwanda', true, 100);
INSERT INTO countrylanguage VALUES ('SWE', 'Swedish', true, 89.5);
INSERT INTO countrylanguage VALUES ('SHN', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('KNA', 'Creole English', false, 100);
INSERT INTO countrylanguage VALUES ('LCA', 'Creole French', false, 80);
INSERT INTO countrylanguage VALUES ('VCT', 'Creole English', false, 99.099998);
INSERT INTO countrylanguage VALUES ('SPM', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('DEU', 'German', true, 91.300003);
INSERT INTO countrylanguage VALUES ('SLB', 'Malenasian Languages', false, 85.599998);
INSERT INTO countrylanguage VALUES ('ZMB', 'Bemba', false, 29.700001);
INSERT INTO countrylanguage VALUES ('WSM', 'Samoan-English', false, 52);
INSERT INTO countrylanguage VALUES ('SMR', 'Italian', true, 100);
INSERT INTO countrylanguage VALUES ('STP', 'Crioulo', false, 86.300003);
INSERT INTO countrylanguage VALUES ('SAU', 'Arabic', true, 95);
INSERT INTO countrylanguage VALUES ('SEN', 'Wolof', true, 48.099998);
INSERT INTO countrylanguage VALUES ('SYC', 'Seselwa', false, 91.300003);
INSERT INTO countrylanguage VALUES ('SLE', 'Mende', false, 34.799999);
INSERT INTO countrylanguage VALUES ('SGP', 'Chinese', true, 77.099998);
INSERT INTO countrylanguage VALUES ('SVK', 'Slovak', true, 85.599998);
INSERT INTO countrylanguage VALUES ('SVN', 'Slovene', true, 87.900002);
INSERT INTO countrylanguage VALUES ('SOM', 'Somali', true, 98.300003);
INSERT INTO countrylanguage VALUES ('LKA', 'Singali', true, 60.299999);
INSERT INTO countrylanguage VALUES ('SDN', 'Arabic', true, 49.400002);
INSERT INTO countrylanguage VALUES ('FIN', 'Finnish', true, 92.699997);
INSERT INTO countrylanguage VALUES ('SUR', 'Sranantonga', false, 81);
INSERT INTO countrylanguage VALUES ('SWZ', 'Swazi', true, 89.900002);
INSERT INTO countrylanguage VALUES ('CHE', 'German', true, 63.599998);
INSERT INTO countrylanguage VALUES ('SYR', 'Arabic', true, 90);
INSERT INTO countrylanguage VALUES ('TJK', 'Tadzhik', true, 62.200001);
INSERT INTO countrylanguage VALUES ('TWN', 'Min', false, 66.699997);
INSERT INTO countrylanguage VALUES ('TZA', 'Nyamwesi', false, 21.1);
INSERT INTO countrylanguage VALUES ('DNK', 'Danish', true, 93.5);
INSERT INTO countrylanguage VALUES ('THA', 'Thai', true, 52.599998);
INSERT INTO countrylanguage VALUES ('TGO', 'Ewe', true, 23.200001);
INSERT INTO countrylanguage VALUES ('TKL', 'Tokelau', false, 0);
INSERT INTO countrylanguage VALUES ('TON', 'Tongan', true, 98.300003);
INSERT INTO countrylanguage VALUES ('TTO', 'English', false, 93.5);
INSERT INTO countrylanguage VALUES ('TCD', 'Sara', false, 27.700001);
INSERT INTO countrylanguage VALUES ('CZE', 'Czech', true, 81.199997);
INSERT INTO countrylanguage VALUES ('TUN', 'Arabic', true, 69.900002);
INSERT INTO countrylanguage VALUES ('TUR', 'Turkish', true, 87.599998);
INSERT INTO countrylanguage VALUES ('TKM', 'Turkmenian', true, 76.699997);
INSERT INTO countrylanguage VALUES ('TCA', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('TUV', 'Tuvalu', true, 92.5);
INSERT INTO countrylanguage VALUES ('UGA', 'Ganda', false, 18.1);
INSERT INTO countrylanguage VALUES ('UKR', 'Ukrainian', true, 64.699997);
INSERT INTO countrylanguage VALUES ('HUN', 'Hungarian', true, 98.5);
INSERT INTO countrylanguage VALUES ('URY', 'Spanish', true, 95.699997);
INSERT INTO countrylanguage VALUES ('NCL', 'Malenasian Languages', false, 45.400002);
INSERT INTO countrylanguage VALUES ('NZL', 'English', true, 87);
INSERT INTO countrylanguage VALUES ('UZB', 'Uzbek', true, 72.599998);
INSERT INTO countrylanguage VALUES ('BLR', 'Belorussian', true, 65.599998);
INSERT INTO countrylanguage VALUES ('WLF', 'Wallis', false, 0);
INSERT INTO countrylanguage VALUES ('VUT', 'Bislama', true, 56.599998);
INSERT INTO countrylanguage VALUES ('VAT', 'Italian', true, 0);
INSERT INTO countrylanguage VALUES ('VEN', 'Spanish', true, 96.900002);
INSERT INTO countrylanguage VALUES ('RUS', 'Russian', true, 86.599998);
INSERT INTO countrylanguage VALUES ('VNM', 'Vietnamese', true, 86.800003);
INSERT INTO countrylanguage VALUES ('EST', 'Estonian', true, 65.300003);
INSERT INTO countrylanguage VALUES ('USA', 'English', true, 86.199997);
INSERT INTO countrylanguage VALUES ('VIR', 'English', true, 81.699997);
INSERT INTO countrylanguage VALUES ('UMI', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('ZWE', 'Shona', false, 72.099998);
INSERT INTO countrylanguage VALUES ('PSE', 'Arabic', false, 95.900002);
INSERT INTO countrylanguage VALUES ('AFG', 'Dari', true, 32.099998);
INSERT INTO countrylanguage VALUES ('NLD', 'Fries', false, 3.7);
INSERT INTO countrylanguage VALUES ('ANT', 'English', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('ALB', 'Greek', false, 1.8);
INSERT INTO countrylanguage VALUES ('DZA', 'Berberi', false, 14);
INSERT INTO countrylanguage VALUES ('ASM', 'English', true, 3.0999999);
INSERT INTO countrylanguage VALUES ('AND', 'Catalan', true, 32.299999);
INSERT INTO countrylanguage VALUES ('AGO', 'Mbundu', false, 21.6);
INSERT INTO countrylanguage VALUES ('ATG', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('ARE', 'Hindi', false, 0);
INSERT INTO countrylanguage VALUES ('ARG', 'Italian', false, 1.7);
INSERT INTO countrylanguage VALUES ('ARM', 'Azerbaijani', false, 2.5999999);
INSERT INTO countrylanguage VALUES ('ABW', 'English', false, 9.5);
INSERT INTO countrylanguage VALUES ('AUS', 'Italian', false, 2.2);
INSERT INTO countrylanguage VALUES ('AZE', 'Russian', false, 3);
INSERT INTO countrylanguage VALUES ('BHS', 'Creole French', false, 10.3);
INSERT INTO countrylanguage VALUES ('BHR', 'English', false, 0);
INSERT INTO countrylanguage VALUES ('BGD', 'Chakma', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('BRB', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('BEL', 'French', true, 32.599998);
INSERT INTO countrylanguage VALUES ('BLZ', 'Spanish', false, 31.6);
INSERT INTO countrylanguage VALUES ('BEN', 'Joruba', false, 12.2);
INSERT INTO countrylanguage VALUES ('BTN', 'Nepali', false, 34.799999);
INSERT INTO countrylanguage VALUES ('BOL', 'Ketua', true, 8.1000004);
INSERT INTO countrylanguage VALUES ('BWA', 'Shona', false, 12.3);
INSERT INTO countrylanguage VALUES ('BRA', 'German', false, 0.5);
INSERT INTO countrylanguage VALUES ('GBR', 'Kymri', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('BRN', 'Malay-English', false, 28.799999);
INSERT INTO countrylanguage VALUES ('BGR', 'Turkish', false, 9.3999996);
INSERT INTO countrylanguage VALUES ('BFA', 'Ful', false, 9.6999998);
INSERT INTO countrylanguage VALUES ('BDI', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('CHL', 'Araucan', false, 9.6000004);
INSERT INTO countrylanguage VALUES ('COK', 'English', false, 0);
INSERT INTO countrylanguage VALUES ('CRI', 'Creole English', false, 2);
INSERT INTO countrylanguage VALUES ('DJI', 'Afar', false, 34.799999);
INSERT INTO countrylanguage VALUES ('DMA', 'Creole French', false, 0);
INSERT INTO countrylanguage VALUES ('DOM', 'Creole French', false, 2);
INSERT INTO countrylanguage VALUES ('ECU', 'Ketua', false, 7);
INSERT INTO countrylanguage VALUES ('EGY', 'Sinaberberi', false, 0);
INSERT INTO countrylanguage VALUES ('SLV', 'Nahua', false, 0);
INSERT INTO countrylanguage VALUES ('ERI', 'Tigre', false, 31.700001);
INSERT INTO countrylanguage VALUES ('ESP', 'Catalan', false, 16.9);
INSERT INTO countrylanguage VALUES ('ZAF', 'Xhosa', true, 17.700001);
INSERT INTO countrylanguage VALUES ('ETH', 'Amhara', false, 30);
INSERT INTO countrylanguage VALUES ('FJI', 'Hindi', false, 43.700001);
INSERT INTO countrylanguage VALUES ('PHL', 'Cebuano', false, 23.299999);
INSERT INTO countrylanguage VALUES ('FRO', 'Danish', true, 0);
INSERT INTO countrylanguage VALUES ('GAB', 'Punu-sira-nzebi', false, 17.1);
INSERT INTO countrylanguage VALUES ('GMB', 'Ful', false, 16.200001);
INSERT INTO countrylanguage VALUES ('GEO', 'Russian', false, 8.8000002);
INSERT INTO countrylanguage VALUES ('GHA', 'Mossi', false, 15.8);
INSERT INTO countrylanguage VALUES ('GIB', 'Arabic', false, 7.4000001);
INSERT INTO countrylanguage VALUES ('GRL', 'Danish', true, 12.5);
INSERT INTO countrylanguage VALUES ('GLP', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('GUM', 'Chamorro', true, 29.6);
INSERT INTO countrylanguage VALUES ('GTM', 'Quiché', false, 10.1);
INSERT INTO countrylanguage VALUES ('GIN', 'Malinke', false, 23.200001);
INSERT INTO countrylanguage VALUES ('GNB', 'Ful', false, 16.6);
INSERT INTO countrylanguage VALUES ('GUY', 'Caribbean', false, 2.2);
INSERT INTO countrylanguage VALUES ('HTI', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('HND', 'Garifuna', false, 1.3);
INSERT INTO countrylanguage VALUES ('HKG', 'English', true, 2.2);
INSERT INTO countrylanguage VALUES ('SJM', 'Russian', false, 0);
INSERT INTO countrylanguage VALUES ('IDN', 'Sunda', false, 15.8);
INSERT INTO countrylanguage VALUES ('IND', 'Bengali', false, 8.1999998);
INSERT INTO countrylanguage VALUES ('IRQ', 'Kurdish', false, 19);
INSERT INTO countrylanguage VALUES ('IRN', 'Azerbaijani', false, 16.799999);
INSERT INTO countrylanguage VALUES ('IRL', 'Irish', true, 1.6);
INSERT INTO countrylanguage VALUES ('ISL', 'English', false, 0);
INSERT INTO countrylanguage VALUES ('ISR', 'Arabic', true, 18);
INSERT INTO countrylanguage VALUES ('ITA', 'Sardinian', false, 2.7);
INSERT INTO countrylanguage VALUES ('TMP', 'Portuguese', true, 0);
INSERT INTO countrylanguage VALUES ('AUT', 'Serbo-Croatian', false, 2.2);
INSERT INTO countrylanguage VALUES ('JAM', 'Hindi', false, 1.9);
INSERT INTO countrylanguage VALUES ('JPN', 'Korean', false, 0.5);
INSERT INTO countrylanguage VALUES ('YEM', 'Soqutri', false, 0);
INSERT INTO countrylanguage VALUES ('JOR', 'Circassian', false, 1);
INSERT INTO countrylanguage VALUES ('CXR', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('YUG', 'Albaniana', false, 16.5);
INSERT INTO countrylanguage VALUES ('KHM', 'Vietnamese', false, 5.5);
INSERT INTO countrylanguage VALUES ('CMR', 'Bamileke-bamum', false, 18.6);
INSERT INTO countrylanguage VALUES ('CAN', 'French', true, 23.4);
INSERT INTO countrylanguage VALUES ('CPV', 'Portuguese', true, 0);
INSERT INTO countrylanguage VALUES ('KAZ', 'Russian', false, 34.700001);
INSERT INTO countrylanguage VALUES ('KEN', 'Luhya', false, 13.8);
INSERT INTO countrylanguage VALUES ('CAF', 'Banda', false, 23.5);
INSERT INTO countrylanguage VALUES ('CHN', 'Zhuang', false, 1.4);
INSERT INTO countrylanguage VALUES ('KGZ', 'Russian', true, 16.200001);
INSERT INTO countrylanguage VALUES ('KIR', 'Tuvalu', false, 0.5);
INSERT INTO countrylanguage VALUES ('COL', 'Chibcha', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('COM', 'Comorian-French', false, 12.9);
INSERT INTO countrylanguage VALUES ('COG', 'Teke', false, 17.299999);
INSERT INTO countrylanguage VALUES ('COD', 'Kongo', false, 16);
INSERT INTO countrylanguage VALUES ('CCK', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('PRK', 'Chinese', false, 0.1);
INSERT INTO countrylanguage VALUES ('KOR', 'Chinese', false, 0.1);
INSERT INTO countrylanguage VALUES ('GRC', 'Turkish', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('HRV', 'Slovene', false, 0);
INSERT INTO countrylanguage VALUES ('KWT', 'English', false, 0);
INSERT INTO countrylanguage VALUES ('CYP', 'Turkish', true, 22.4);
INSERT INTO countrylanguage VALUES ('LAO', 'Mon-khmer', false, 16.5);
INSERT INTO countrylanguage VALUES ('LVA', 'Russian', false, 32.5);
INSERT INTO countrylanguage VALUES ('LSO', 'Zulu', false, 15);
INSERT INTO countrylanguage VALUES ('LBN', 'Armenian', false, 5.9000001);
INSERT INTO countrylanguage VALUES ('LBR', 'Bassa', false, 13.7);
INSERT INTO countrylanguage VALUES ('LBY', 'Berberi', false, 1);
INSERT INTO countrylanguage VALUES ('LIE', 'Italian', false, 2.5);
INSERT INTO countrylanguage VALUES ('LTU', 'Russian', false, 8.1000004);
INSERT INTO countrylanguage VALUES ('LUX', 'Portuguese', false, 13);
INSERT INTO countrylanguage VALUES ('MAC', 'Portuguese', true, 2.3);
INSERT INTO countrylanguage VALUES ('MDG', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('MKD', 'Albaniana', false, 22.9);
INSERT INTO countrylanguage VALUES ('MWI', 'Lomwe', false, 18.4);
INSERT INTO countrylanguage VALUES ('MDV', 'English', false, 0);
INSERT INTO countrylanguage VALUES ('MYS', 'Chinese', false, 9);
INSERT INTO countrylanguage VALUES ('MLI', 'Ful', false, 13.9);
INSERT INTO countrylanguage VALUES ('MLT', 'English', true, 2.0999999);
INSERT INTO countrylanguage VALUES ('MAR', 'Berberi', false, 33);
INSERT INTO countrylanguage VALUES ('MHL', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('MTQ', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('MRT', 'Wolof', false, 6.5999999);
INSERT INTO countrylanguage VALUES ('MUS', 'Bhojpuri', false, 21.1);
INSERT INTO countrylanguage VALUES ('MYT', 'French', true, 20.299999);
INSERT INTO countrylanguage VALUES ('MEX', 'Náhuatl', false, 1.8);
INSERT INTO countrylanguage VALUES ('FSM', 'Pohnpei', false, 23.799999);
INSERT INTO countrylanguage VALUES ('MDA', 'Russian', false, 23.200001);
INSERT INTO countrylanguage VALUES ('MCO', 'Monegasque', false, 16.1);
INSERT INTO countrylanguage VALUES ('MNG', 'Kazakh', false, 5.9000001);
INSERT INTO countrylanguage VALUES ('MOZ', 'Tsonga', false, 12.4);
INSERT INTO countrylanguage VALUES ('MMR', 'Shan', false, 8.5);
INSERT INTO countrylanguage VALUES ('NAM', 'Nama', false, 12.4);
INSERT INTO countrylanguage VALUES ('NRU', 'Kiribati', false, 17.9);
INSERT INTO countrylanguage VALUES ('NPL', 'Maithili', false, 11.9);
INSERT INTO countrylanguage VALUES ('NIC', 'Miskito', false, 1.6);
INSERT INTO countrylanguage VALUES ('NER', 'Songhai-zerma', false, 21.200001);
INSERT INTO countrylanguage VALUES ('NGA', 'Hausa', false, 21.1);
INSERT INTO countrylanguage VALUES ('NIU', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('NOR', 'English', false, 0.5);
INSERT INTO countrylanguage VALUES ('CIV', 'Gur', false, 11.7);
INSERT INTO countrylanguage VALUES ('OMN', 'Balochi', false, 0);
INSERT INTO countrylanguage VALUES ('PAK', 'Pashto', false, 13.1);
INSERT INTO countrylanguage VALUES ('PLW', 'Philippene Languages', false, 9.1999998);
INSERT INTO countrylanguage VALUES ('PAN', 'Creole English', false, 14);
INSERT INTO countrylanguage VALUES ('PNG', 'Malenasian Languages', false, 20);
INSERT INTO countrylanguage VALUES ('PRY', 'Guaraní', true, 40.099998);
INSERT INTO countrylanguage VALUES ('PER', 'Ketua', true, 16.4);
INSERT INTO countrylanguage VALUES ('MNP', 'Chamorro', false, 30);
INSERT INTO countrylanguage VALUES ('PRI', 'English', false, 47.400002);
INSERT INTO countrylanguage VALUES ('POL', 'German', false, 1.3);
INSERT INTO countrylanguage VALUES ('GNQ', 'Bubi', false, 8.6999998);
INSERT INTO countrylanguage VALUES ('QAT', 'Urdu', false, 0);
INSERT INTO countrylanguage VALUES ('FRA', 'Arabic', false, 2.5);
INSERT INTO countrylanguage VALUES ('GUF', 'Indian Languages', false, 1.9);
INSERT INTO countrylanguage VALUES ('PYF', 'French', true, 40.799999);
INSERT INTO countrylanguage VALUES ('REU', 'Chinese', false, 2.8);
INSERT INTO countrylanguage VALUES ('ROM', 'Hungarian', false, 7.1999998);
INSERT INTO countrylanguage VALUES ('RWA', 'French', true, 0);
INSERT INTO countrylanguage VALUES ('SWE', 'Finnish', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('KNA', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('LCA', 'English', true, 20);
INSERT INTO countrylanguage VALUES ('VCT', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('DEU', 'Turkish', false, 2.5999999);
INSERT INTO countrylanguage VALUES ('SLB', 'Papuan Languages', false, 8.6000004);
INSERT INTO countrylanguage VALUES ('ZMB', 'Tongan', false, 11);
INSERT INTO countrylanguage VALUES ('WSM', 'Samoan', true, 47.5);
INSERT INTO countrylanguage VALUES ('STP', 'French', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('SEN', 'Ful', false, 21.700001);
INSERT INTO countrylanguage VALUES ('SYC', 'English', true, 3.8);
INSERT INTO countrylanguage VALUES ('SLE', 'Temne', false, 31.799999);
INSERT INTO countrylanguage VALUES ('SGP', 'Malay', true, 14.1);
INSERT INTO countrylanguage VALUES ('SVK', 'Hungarian', false, 10.5);
INSERT INTO countrylanguage VALUES ('SVN', 'Serbo-Croatian', false, 7.9000001);
INSERT INTO countrylanguage VALUES ('SOM', 'Arabic', true, 0);
INSERT INTO countrylanguage VALUES ('LKA', 'Tamil', true, 19.6);
INSERT INTO countrylanguage VALUES ('SDN', 'Dinka', false, 11.5);
INSERT INTO countrylanguage VALUES ('FIN', 'Swedish', true, 5.6999998);
INSERT INTO countrylanguage VALUES ('SUR', 'Hindi', false, 0);
INSERT INTO countrylanguage VALUES ('SWZ', 'Zulu', false, 2);
INSERT INTO countrylanguage VALUES ('CHE', 'French', true, 19.200001);
INSERT INTO countrylanguage VALUES ('SYR', 'Kurdish', false, 9);
INSERT INTO countrylanguage VALUES ('TJK', 'Uzbek', false, 23.200001);
INSERT INTO countrylanguage VALUES ('TWN', 'Mandarin Chinese', true, 20.1);
INSERT INTO countrylanguage VALUES ('TZA', 'Swahili', true, 8.8000002);
INSERT INTO countrylanguage VALUES ('DNK', 'Turkish', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('THA', 'Lao', false, 26.9);
INSERT INTO countrylanguage VALUES ('TGO', 'Kabyé', true, 13.8);
INSERT INTO countrylanguage VALUES ('TKL', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('TON', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('TTO', 'Hindi', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('TCD', 'Arabic', true, 12.3);
INSERT INTO countrylanguage VALUES ('CZE', 'Moravian', false, 12.9);
INSERT INTO countrylanguage VALUES ('TUN', 'Arabic-French', false, 26.299999);
INSERT INTO countrylanguage VALUES ('TUR', 'Kurdish', false, 10.6);
INSERT INTO countrylanguage VALUES ('TKM', 'Uzbek', false, 9.1999998);
INSERT INTO countrylanguage VALUES ('TUV', 'Kiribati', false, 7.5);
INSERT INTO countrylanguage VALUES ('UGA', 'Nkole', false, 10.7);
INSERT INTO countrylanguage VALUES ('UKR', 'Russian', false, 32.900002);
INSERT INTO countrylanguage VALUES ('HUN', 'Romani', false, 0.5);
INSERT INTO countrylanguage VALUES ('NCL', 'French', true, 34.299999);
INSERT INTO countrylanguage VALUES ('NZL', 'Maori', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('UZB', 'Russian', false, 10.9);
INSERT INTO countrylanguage VALUES ('BLR', 'Russian', true, 32);
INSERT INTO countrylanguage VALUES ('WLF', 'Futuna', false, 0);
INSERT INTO countrylanguage VALUES ('VUT', 'English', true, 28.299999);
INSERT INTO countrylanguage VALUES ('VEN', 'Goajiro', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('RUS', 'Tatar', false, 3.2);
INSERT INTO countrylanguage VALUES ('VNM', 'Tho', false, 1.8);
INSERT INTO countrylanguage VALUES ('EST', 'Russian', false, 27.799999);
INSERT INTO countrylanguage VALUES ('USA', 'Spanish', false, 7.5);
INSERT INTO countrylanguage VALUES ('VIR', 'Spanish', false, 13.3);
INSERT INTO countrylanguage VALUES ('ZWE', 'Ndebele', false, 16.200001);
INSERT INTO countrylanguage VALUES ('PSE', 'Hebrew', false, 4.0999999);
INSERT INTO countrylanguage VALUES ('AFG', 'Uzbek', false, 8.8000002);
INSERT INTO countrylanguage VALUES ('NLD', 'Arabic', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('ANT', 'Dutch', true, 0);
INSERT INTO countrylanguage VALUES ('ALB', 'Macedonian', false, 0.1);
INSERT INTO countrylanguage VALUES ('ASM', 'Tongan', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('AND', 'Portuguese', false, 10.8);
INSERT INTO countrylanguage VALUES ('AGO', 'Kongo', false, 13.2);
INSERT INTO countrylanguage VALUES ('ARG', 'Indian Languages', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('ABW', 'Spanish', false, 7.4000001);
INSERT INTO countrylanguage VALUES ('AUS', 'Greek', false, 1.6);
INSERT INTO countrylanguage VALUES ('AZE', 'Lezgian', false, 2.3);
INSERT INTO countrylanguage VALUES ('BGD', 'Marma', false, 0.2);
INSERT INTO countrylanguage VALUES ('BEL', 'Italian', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('BLZ', 'Maya Languages', false, 9.6000004);
INSERT INTO countrylanguage VALUES ('BEN', 'Adja', false, 11.1);
INSERT INTO countrylanguage VALUES ('BTN', 'Asami', false, 15.2);
INSERT INTO countrylanguage VALUES ('BOL', 'Aimará', true, 3.2);
INSERT INTO countrylanguage VALUES ('BWA', 'San', false, 3.5);
INSERT INTO countrylanguage VALUES ('BRA', 'Italian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('GBR', 'Gaeli', false, 0.1);
INSERT INTO countrylanguage VALUES ('BRN', 'Chinese', false, 9.3000002);
INSERT INTO countrylanguage VALUES ('BGR', 'Romani', false, 3.7);
INSERT INTO countrylanguage VALUES ('BFA', 'Gurma', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('BDI', 'Swahili', false, 0);
INSERT INTO countrylanguage VALUES ('CHL', 'Aimará', false, 0.5);
INSERT INTO countrylanguage VALUES ('CRI', 'Chibcha', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('DJI', 'Arabic', true, 10.6);
INSERT INTO countrylanguage VALUES ('ERI', 'Afar', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('ESP', 'Galecian', false, 6.4000001);
INSERT INTO countrylanguage VALUES ('ZAF', 'Afrikaans', true, 14.3);
INSERT INTO countrylanguage VALUES ('ETH', 'Tigrinja', false, 7.1999998);
INSERT INTO countrylanguage VALUES ('PHL', 'Ilocano', false, 9.3000002);
INSERT INTO countrylanguage VALUES ('GAB', 'Mpongwe', false, 14.6);
INSERT INTO countrylanguage VALUES ('GMB', 'Wolof', false, 12.6);
INSERT INTO countrylanguage VALUES ('GEO', 'Armenian', false, 6.8000002);
INSERT INTO countrylanguage VALUES ('GHA', 'Ewe', false, 11.9);
INSERT INTO countrylanguage VALUES ('GUM', 'Philippene Languages', false, 19.700001);
INSERT INTO countrylanguage VALUES ('GTM', 'Cakchiquel', false, 8.8999996);
INSERT INTO countrylanguage VALUES ('GIN', 'Susu', false, 11);
INSERT INTO countrylanguage VALUES ('GNB', 'Balante', false, 14.6);
INSERT INTO countrylanguage VALUES ('GUY', 'Arawakan', false, 1.4);
INSERT INTO countrylanguage VALUES ('HND', 'Creole English', false, 0.2);
INSERT INTO countrylanguage VALUES ('HKG', 'Fukien', false, 1.9);
INSERT INTO countrylanguage VALUES ('IDN', 'Malay', true, 12.1);
INSERT INTO countrylanguage VALUES ('IND', 'Telugu', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('IRQ', 'Azerbaijani', false, 1.7);
INSERT INTO countrylanguage VALUES ('IRN', 'Kurdish', false, 9.1000004);
INSERT INTO countrylanguage VALUES ('ISR', 'Russian', false, 8.8999996);
INSERT INTO countrylanguage VALUES ('ITA', 'Friuli', false, 1.2);
INSERT INTO countrylanguage VALUES ('AUT', 'Turkish', false, 1.5);
INSERT INTO countrylanguage VALUES ('JPN', 'Chinese', false, 0.2);
INSERT INTO countrylanguage VALUES ('JOR', 'Armenian', false, 1);
INSERT INTO countrylanguage VALUES ('YUG', 'Hungarian', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('KHM', 'Chinese', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('CMR', 'Duala', false, 10.9);
INSERT INTO countrylanguage VALUES ('CAN', 'Chinese', false, 2.5);
INSERT INTO countrylanguage VALUES ('KAZ', 'Ukrainian', false, 5);
INSERT INTO countrylanguage VALUES ('KEN', 'Luo', false, 12.8);
INSERT INTO countrylanguage VALUES ('CAF', 'Mandjia', false, 14.8);
INSERT INTO countrylanguage VALUES ('CHN', 'Mantu', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('KGZ', 'Uzbek', false, 14.1);
INSERT INTO countrylanguage VALUES ('COL', 'Creole English', false, 0.1);
INSERT INTO countrylanguage VALUES ('COM', 'Comorian-madagassi', false, 5.5);
INSERT INTO countrylanguage VALUES ('COG', 'Mboshi', false, 11.4);
INSERT INTO countrylanguage VALUES ('COD', 'Mongo', false, 13.5);
INSERT INTO countrylanguage VALUES ('LAO', 'Thai', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('LVA', 'Belorussian', false, 4.0999999);
INSERT INTO countrylanguage VALUES ('LSO', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('LBN', 'French', false, 0);
INSERT INTO countrylanguage VALUES ('LBR', 'Grebo', false, 8.8999996);
INSERT INTO countrylanguage VALUES ('LIE', 'Turkish', false, 2.5);
INSERT INTO countrylanguage VALUES ('LTU', 'Polish', false, 7);
INSERT INTO countrylanguage VALUES ('LUX', 'Italian', false, 4.5999999);
INSERT INTO countrylanguage VALUES ('MAC', 'Mandarin Chinese', false, 1.2);
INSERT INTO countrylanguage VALUES ('MKD', 'Turkish', false, 4);
INSERT INTO countrylanguage VALUES ('MWI', 'Yao', false, 13.2);
INSERT INTO countrylanguage VALUES ('MYS', 'Tamil', false, 3.9000001);
INSERT INTO countrylanguage VALUES ('MLI', 'Senufo and Minianka', false, 12);
INSERT INTO countrylanguage VALUES ('MRT', 'Tukulor', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('MUS', 'French', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('MYT', 'Malagasy', false, 16.1);
INSERT INTO countrylanguage VALUES ('MEX', 'Yucatec', false, 1.1);
INSERT INTO countrylanguage VALUES ('FSM', 'Mortlock', false, 7.5999999);
INSERT INTO countrylanguage VALUES ('MDA', 'Ukrainian', false, 8.6000004);
INSERT INTO countrylanguage VALUES ('MCO', 'Italian', false, 16.1);
INSERT INTO countrylanguage VALUES ('MNG', 'Dorbet', false, 2.7);
INSERT INTO countrylanguage VALUES ('MOZ', 'Sena', false, 9.3999996);
INSERT INTO countrylanguage VALUES ('MMR', 'Karen', false, 6.1999998);
INSERT INTO countrylanguage VALUES ('NAM', 'Kavango', false, 9.6999998);
INSERT INTO countrylanguage VALUES ('NRU', 'Chinese', false, 8.5);
INSERT INTO countrylanguage VALUES ('NPL', 'Bhojpuri', false, 7.5);
INSERT INTO countrylanguage VALUES ('NIC', 'Creole English', false, 0.5);
INSERT INTO countrylanguage VALUES ('NER', 'Tamashek', false, 10.4);
INSERT INTO countrylanguage VALUES ('NGA', 'Ibo', false, 18.1);
INSERT INTO countrylanguage VALUES ('NOR', 'Danish', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('CIV', 'Malinke', false, 11.4);
INSERT INTO countrylanguage VALUES ('PAK', 'Sindhi', false, 11.8);
INSERT INTO countrylanguage VALUES ('PLW', 'English', true, 3.2);
INSERT INTO countrylanguage VALUES ('PAN', 'Guaymí', false, 5.3000002);
INSERT INTO countrylanguage VALUES ('PRY', 'Portuguese', false, 3.2);
INSERT INTO countrylanguage VALUES ('PER', 'Aimará', true, 2.3);
INSERT INTO countrylanguage VALUES ('MNP', 'Chinese', false, 7.0999999);
INSERT INTO countrylanguage VALUES ('POL', 'Ukrainian', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('FRA', 'Portuguese', false, 1.2);
INSERT INTO countrylanguage VALUES ('PYF', 'Chinese', false, 2.9000001);
INSERT INTO countrylanguage VALUES ('REU', 'Comorian', false, 2.8);
INSERT INTO countrylanguage VALUES ('ROM', 'Romani', true, 0.69999999);
INSERT INTO countrylanguage VALUES ('SWE', 'Southern Slavic Languages', false, 1.3);
INSERT INTO countrylanguage VALUES ('DEU', 'Southern Slavic Languages', false, 1.4);
INSERT INTO countrylanguage VALUES ('SLB', 'Polynesian Languages', false, 3.8);
INSERT INTO countrylanguage VALUES ('ZMB', 'Nyanja', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('WSM', 'English', true, 0.60000002);
INSERT INTO countrylanguage VALUES ('SEN', 'Serer', false, 12.5);
INSERT INTO countrylanguage VALUES ('SYC', 'French', true, 1.3);
INSERT INTO countrylanguage VALUES ('SLE', 'Limba', false, 8.3000002);
INSERT INTO countrylanguage VALUES ('SGP', 'Tamil', true, 7.4000001);
INSERT INTO countrylanguage VALUES ('SVK', 'Romani', false, 1.7);
INSERT INTO countrylanguage VALUES ('SVN', 'Hungarian', false, 0.5);
INSERT INTO countrylanguage VALUES ('LKA', 'Mixed Languages', false, 19.6);
INSERT INTO countrylanguage VALUES ('SDN', 'Nubian Languages', false, 8.1000004);
INSERT INTO countrylanguage VALUES ('FIN', 'Russian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('CHE', 'Italian', true, 7.6999998);
INSERT INTO countrylanguage VALUES ('TJK', 'Russian', false, 9.6999998);
INSERT INTO countrylanguage VALUES ('TWN', 'Hakka', false, 11);
INSERT INTO countrylanguage VALUES ('TZA', 'Hehet', false, 6.9000001);
INSERT INTO countrylanguage VALUES ('DNK', 'Arabic', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('THA', 'Chinese', false, 12.1);
INSERT INTO countrylanguage VALUES ('TGO', 'Watyi', false, 10.3);
INSERT INTO countrylanguage VALUES ('TTO', 'Creole English', false, 2.9000001);
INSERT INTO countrylanguage VALUES ('TCD', 'Mayo-kebbi', false, 11.5);
INSERT INTO countrylanguage VALUES ('CZE', 'Slovak', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('TUN', 'Arabic-French-English', false, 3.2);
INSERT INTO countrylanguage VALUES ('TUR', 'Arabic', false, 1.4);
INSERT INTO countrylanguage VALUES ('TKM', 'Russian', false, 6.6999998);
INSERT INTO countrylanguage VALUES ('TUV', 'English', true, 0);
INSERT INTO countrylanguage VALUES ('UGA', 'Kiga', false, 8.3000002);
INSERT INTO countrylanguage VALUES ('UKR', 'Romanian', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('HUN', 'German', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('NCL', 'Polynesian Languages', false, 11.6);
INSERT INTO countrylanguage VALUES ('UZB', 'Tadzhik', false, 4.4000001);
INSERT INTO countrylanguage VALUES ('BLR', 'Ukrainian', false, 1.3);
INSERT INTO countrylanguage VALUES ('VUT', 'French', true, 14.2);
INSERT INTO countrylanguage VALUES ('VEN', 'Warrau', false, 0.1);
INSERT INTO countrylanguage VALUES ('RUS', 'Ukrainian', false, 1.3);
INSERT INTO countrylanguage VALUES ('VNM', 'Thai', false, 1.6);
INSERT INTO countrylanguage VALUES ('EST', 'Ukrainian', false, 2.8);
INSERT INTO countrylanguage VALUES ('USA', 'French', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('VIR', 'French', false, 2.5);
INSERT INTO countrylanguage VALUES ('ZWE', 'English', true, 2.2);
INSERT INTO countrylanguage VALUES ('AFG', 'Turkmenian', false, 1.9);
INSERT INTO countrylanguage VALUES ('NLD', 'Turkish', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('AND', 'French', false, 6.1999998);
INSERT INTO countrylanguage VALUES ('AGO', 'Luimbe-nganguela', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('ABW', 'Dutch', true, 5.3000002);
INSERT INTO countrylanguage VALUES ('AUS', 'Canton Chinese', false, 1.1);
INSERT INTO countrylanguage VALUES ('AZE', 'Armenian', false, 2);
INSERT INTO countrylanguage VALUES ('BGD', 'Garo', false, 0.1);
INSERT INTO countrylanguage VALUES ('BEL', 'Arabic', false, 1.6);
INSERT INTO countrylanguage VALUES ('BLZ', 'Garifuna', false, 6.8000002);
INSERT INTO countrylanguage VALUES ('BEN', 'Aizo', false, 8.6999998);
INSERT INTO countrylanguage VALUES ('BOL', 'Guaraní', false, 0.1);
INSERT INTO countrylanguage VALUES ('BWA', 'Khoekhoe', false, 2.5);
INSERT INTO countrylanguage VALUES ('BRA', 'Japanese', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('BRN', 'English', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('BGR', 'Macedonian', false, 2.5999999);
INSERT INTO countrylanguage VALUES ('BFA', 'Busansi', false, 3.5);
INSERT INTO countrylanguage VALUES ('CHL', 'Rapa nui', false, 0.2);
INSERT INTO countrylanguage VALUES ('CRI', 'Chinese', false, 0.2);
INSERT INTO countrylanguage VALUES ('ERI', 'Hadareb', false, 3.8);
INSERT INTO countrylanguage VALUES ('ESP', 'Basque', false, 1.6);
INSERT INTO countrylanguage VALUES ('ZAF', 'Northsotho', false, 9.1000004);
INSERT INTO countrylanguage VALUES ('ETH', 'Gurage', false, 4.6999998);
INSERT INTO countrylanguage VALUES ('PHL', 'Hiligaynon', false, 9.1000004);
INSERT INTO countrylanguage VALUES ('GAB', 'Mbete', false, 13.8);
INSERT INTO countrylanguage VALUES ('GMB', 'Diola', false, 9.1999998);
INSERT INTO countrylanguage VALUES ('GEO', 'Azerbaijani', false, 5.5);
INSERT INTO countrylanguage VALUES ('GHA', 'Ga-adangme', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('GUM', 'Korean', false, 3.3);
INSERT INTO countrylanguage VALUES ('GTM', 'Kekchí', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('GIN', 'Kissi', false, 6);
INSERT INTO countrylanguage VALUES ('GNB', 'Portuguese', true, 8.1000004);
INSERT INTO countrylanguage VALUES ('HND', 'Miskito', false, 0.2);
INSERT INTO countrylanguage VALUES ('HKG', 'Hakka', false, 1.6);
INSERT INTO countrylanguage VALUES ('IDN', 'Madura', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('IND', 'Marathi', false, 7.4000001);
INSERT INTO countrylanguage VALUES ('IRQ', 'Assyrian', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('IRN', 'Gilaki', false, 5.3000002);
INSERT INTO countrylanguage VALUES ('ITA', 'French', false, 0.5);
INSERT INTO countrylanguage VALUES ('AUT', 'Hungarian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('JPN', 'English', false, 0.1);
INSERT INTO countrylanguage VALUES ('YUG', 'Romani', false, 1.4);
INSERT INTO countrylanguage VALUES ('KHM', 'Tam', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('CMR', 'Ful', false, 9.6000004);
INSERT INTO countrylanguage VALUES ('CAN', 'Italian', false, 1.7);
INSERT INTO countrylanguage VALUES ('KAZ', 'German', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('KEN', 'Kamba', false, 11.2);
INSERT INTO countrylanguage VALUES ('CAF', 'Ngbaka', false, 7.5);
INSERT INTO countrylanguage VALUES ('CHN', 'Hui', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('KGZ', 'Ukrainian', false, 1.7);
INSERT INTO countrylanguage VALUES ('COL', 'Arawakan', false, 0.1);
INSERT INTO countrylanguage VALUES ('COM', 'Comorian-Arabic', false, 1.6);
INSERT INTO countrylanguage VALUES ('COG', 'Mbete', false, 4.8000002);
INSERT INTO countrylanguage VALUES ('COD', 'Rwanda', false, 10.3);
INSERT INTO countrylanguage VALUES ('LAO', 'Lao-Soung', false, 5.1999998);
INSERT INTO countrylanguage VALUES ('LVA', 'Ukrainian', false, 2.9000001);
INSERT INTO countrylanguage VALUES ('LBR', 'Gio', false, 7.9000001);
INSERT INTO countrylanguage VALUES ('LTU', 'Belorussian', false, 1.4);
INSERT INTO countrylanguage VALUES ('LUX', 'French', true, 4.1999998);
INSERT INTO countrylanguage VALUES ('MAC', 'English', false, 0.5);
INSERT INTO countrylanguage VALUES ('MKD', 'Romani', false, 2.3);
INSERT INTO countrylanguage VALUES ('MWI', 'Ngoni', false, 6.6999998);
INSERT INTO countrylanguage VALUES ('MYS', 'Iban', false, 2.8);
INSERT INTO countrylanguage VALUES ('MLI', 'Soninke', false, 8.6999998);
INSERT INTO countrylanguage VALUES ('MRT', 'Soninke', false, 2.7);
INSERT INTO countrylanguage VALUES ('MUS', 'Hindi', false, 1.2);
INSERT INTO countrylanguage VALUES ('MEX', 'Zapotec', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('FSM', 'Kosrean', false, 7.3000002);
INSERT INTO countrylanguage VALUES ('MDA', 'Gagauzi', false, 3.2);
INSERT INTO countrylanguage VALUES ('MCO', 'English', false, 6.5);
INSERT INTO countrylanguage VALUES ('MNG', 'Bajad', false, 1.9);
INSERT INTO countrylanguage VALUES ('MOZ', 'Lomwe', false, 7.8000002);
INSERT INTO countrylanguage VALUES ('MMR', 'Rakhine', false, 4.5);
INSERT INTO countrylanguage VALUES ('NAM', 'Afrikaans', false, 9.5);
INSERT INTO countrylanguage VALUES ('NRU', 'Tuvalu', false, 8.5);
INSERT INTO countrylanguage VALUES ('NPL', 'Tharu', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('NIC', 'Sumo', false, 0.2);
INSERT INTO countrylanguage VALUES ('NER', 'Ful', false, 9.6999998);
INSERT INTO countrylanguage VALUES ('NGA', 'Ful', false, 11.3);
INSERT INTO countrylanguage VALUES ('NOR', 'Swedish', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('CIV', 'Kru', false, 10.5);
INSERT INTO countrylanguage VALUES ('PAK', 'Saraiki', false, 9.8000002);
INSERT INTO countrylanguage VALUES ('PLW', 'Chinese', false, 1.6);
INSERT INTO countrylanguage VALUES ('PAN', 'Cuna', false, 2);
INSERT INTO countrylanguage VALUES ('PRY', 'German', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('MNP', 'Korean', false, 6.5);
INSERT INTO countrylanguage VALUES ('POL', 'Belorussian', false, 0.5);
INSERT INTO countrylanguage VALUES ('FRA', 'Italian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('REU', 'Malagasy', false, 1.4);
INSERT INTO countrylanguage VALUES ('ROM', 'German', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('SWE', 'Arabic', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('DEU', 'Italian', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('ZMB', 'Lozi', false, 6.4000001);
INSERT INTO countrylanguage VALUES ('SEN', 'Diola', false, 5);
INSERT INTO countrylanguage VALUES ('SLE', 'Kono-vai', false, 5.0999999);
INSERT INTO countrylanguage VALUES ('SVK', 'Czech and Moravian', false, 1.1);
INSERT INTO countrylanguage VALUES ('SDN', 'Beja', false, 6.4000001);
INSERT INTO countrylanguage VALUES ('FIN', 'Estonian', false, 0.2);
INSERT INTO countrylanguage VALUES ('CHE', 'Romansh', true, 0.60000002);
INSERT INTO countrylanguage VALUES ('TWN', 'Ami', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('TZA', 'Haya', false, 5.9000001);
INSERT INTO countrylanguage VALUES ('DNK', 'German', false, 0.5);
INSERT INTO countrylanguage VALUES ('THA', 'Malay', false, 3.5999999);
INSERT INTO countrylanguage VALUES ('TGO', 'Kotokoli', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('TCD', 'Kanem-bornu', false, 9);
INSERT INTO countrylanguage VALUES ('CZE', 'Polish', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('TKM', 'Kazakh', false, 2);
INSERT INTO countrylanguage VALUES ('UGA', 'Soga', false, 8.1999998);
INSERT INTO countrylanguage VALUES ('UKR', 'Bulgariana', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('HUN', 'Serbo-Croatian', false, 0.2);
INSERT INTO countrylanguage VALUES ('UZB', 'Kazakh', false, 3.8);
INSERT INTO countrylanguage VALUES ('BLR', 'Polish', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('RUS', 'Chuvash', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('VNM', 'Muong', false, 1.5);
INSERT INTO countrylanguage VALUES ('EST', 'Belorussian', false, 1.4);
INSERT INTO countrylanguage VALUES ('USA', 'German', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('ZWE', 'Nyanja', false, 2.2);
INSERT INTO countrylanguage VALUES ('AFG', 'Balochi', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('AGO', 'Nyaneka-nkhumbi', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('AUS', 'Arabic', false, 1);
INSERT INTO countrylanguage VALUES ('BGD', 'Khasi', false, 0.1);
INSERT INTO countrylanguage VALUES ('BEL', 'German', true, 1);
INSERT INTO countrylanguage VALUES ('BEN', 'Bariba', false, 8.6999998);
INSERT INTO countrylanguage VALUES ('BWA', 'Ndebele', false, 1.3);
INSERT INTO countrylanguage VALUES ('BRA', 'Indian Languages', false, 0.2);
INSERT INTO countrylanguage VALUES ('BFA', 'Dagara', false, 3.0999999);
INSERT INTO countrylanguage VALUES ('ERI', 'Bilin', false, 3);
INSERT INTO countrylanguage VALUES ('ZAF', 'English', true, 8.5);
INSERT INTO countrylanguage VALUES ('ETH', 'Somali', false, 4.0999999);
INSERT INTO countrylanguage VALUES ('PHL', 'Bicol', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('GMB', 'Soninke', false, 7.5999999);
INSERT INTO countrylanguage VALUES ('GEO', 'Osseetti', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('GHA', 'Gurma', false, 3.3);
INSERT INTO countrylanguage VALUES ('GUM', 'Japanese', false, 2);
INSERT INTO countrylanguage VALUES ('GTM', 'Mam', false, 2.7);
INSERT INTO countrylanguage VALUES ('GIN', 'Kpelle', false, 4.5999999);
INSERT INTO countrylanguage VALUES ('GNB', 'Malinke', false, 6.9000001);
INSERT INTO countrylanguage VALUES ('HKG', 'Chiu chau', false, 1.4);
INSERT INTO countrylanguage VALUES ('IDN', 'Minangkabau', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('IND', 'Tamil', false, 6.3000002);
INSERT INTO countrylanguage VALUES ('IRQ', 'Persian', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('IRN', 'Luri', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('ITA', 'German', false, 0.5);
INSERT INTO countrylanguage VALUES ('AUT', 'Slovene', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('JPN', 'Philippene Languages', false, 0.1);
INSERT INTO countrylanguage VALUES ('YUG', 'Slovak', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('CMR', 'Tikar', false, 7.4000001);
INSERT INTO countrylanguage VALUES ('CAN', 'German', false, 1.6);
INSERT INTO countrylanguage VALUES ('KAZ', 'Uzbek', false, 2.3);
INSERT INTO countrylanguage VALUES ('KEN', 'Kalenjin', false, 10.8);
INSERT INTO countrylanguage VALUES ('CAF', 'Sara', false, 6.4000001);
INSERT INTO countrylanguage VALUES ('CHN', 'Miao', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('KGZ', 'Tatar', false, 1.3);
INSERT INTO countrylanguage VALUES ('COL', 'Caribbean', false, 0.1);
INSERT INTO countrylanguage VALUES ('COM', 'Comorian-Swahili', false, 0.5);
INSERT INTO countrylanguage VALUES ('COG', 'Punu', false, 2.9000001);
INSERT INTO countrylanguage VALUES ('COD', 'Zande', false, 6.0999999);
INSERT INTO countrylanguage VALUES ('LVA', 'Polish', false, 2.0999999);
INSERT INTO countrylanguage VALUES ('LBR', 'Kru', false, 7.1999998);
INSERT INTO countrylanguage VALUES ('LTU', 'Ukrainian', false, 1.1);
INSERT INTO countrylanguage VALUES ('LUX', 'German', true, 2.3);
INSERT INTO countrylanguage VALUES ('MKD', 'Serbo-Croatian', false, 2);
INSERT INTO countrylanguage VALUES ('MYS', 'English', false, 1.6);
INSERT INTO countrylanguage VALUES ('MLI', 'Tamashek', false, 7.3000002);
INSERT INTO countrylanguage VALUES ('MRT', 'Ful', false, 1.2);
INSERT INTO countrylanguage VALUES ('MUS', 'Tamil', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('MEX', 'Mixtec', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('FSM', 'Yap', false, 5.8000002);
INSERT INTO countrylanguage VALUES ('MDA', 'Bulgariana', false, 1.6);
INSERT INTO countrylanguage VALUES ('MNG', 'Buryat', false, 1.7);
INSERT INTO countrylanguage VALUES ('MOZ', 'Shona', false, 6.5);
INSERT INTO countrylanguage VALUES ('MMR', 'Mon', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('NAM', 'Herero', false, 8);
INSERT INTO countrylanguage VALUES ('NRU', 'English', true, 7.5);
INSERT INTO countrylanguage VALUES ('NPL', 'Tamang', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('NER', 'Kanuri', false, 4.4000001);
INSERT INTO countrylanguage VALUES ('NGA', 'Ibibio', false, 5.5999999);
INSERT INTO countrylanguage VALUES ('NOR', 'Saame', false, 0);
INSERT INTO countrylanguage VALUES ('CIV', '[South]Mande', false, 7.6999998);
INSERT INTO countrylanguage VALUES ('PAK', 'Urdu', true, 7.5999999);
INSERT INTO countrylanguage VALUES ('PAN', 'Embera', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('MNP', 'English', true, 4.8000002);
INSERT INTO countrylanguage VALUES ('FRA', 'Spanish', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('REU', 'Tamil', false, 0);
INSERT INTO countrylanguage VALUES ('ROM', 'Ukrainian', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('SWE', 'Spanish', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('DEU', 'Greek', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('ZMB', 'Chewa', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('SEN', 'Malinke', false, 3.8);
INSERT INTO countrylanguage VALUES ('SLE', 'Bullom-sherbro', false, 3.8);
INSERT INTO countrylanguage VALUES ('SVK', 'Ukrainian and Russian', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('SDN', 'Nuer', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('FIN', 'Saame', false, 0);
INSERT INTO countrylanguage VALUES ('TWN', 'Atayal', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('TZA', 'Makonde', false, 5.9000001);
INSERT INTO countrylanguage VALUES ('DNK', 'English', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('THA', 'Khmer', false, 1.3);
INSERT INTO countrylanguage VALUES ('TGO', 'Ane', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('TCD', 'Ouaddai', false, 8.6999998);
INSERT INTO countrylanguage VALUES ('CZE', 'German', false, 0.5);
INSERT INTO countrylanguage VALUES ('UGA', 'Teso', false, 6);
INSERT INTO countrylanguage VALUES ('UKR', 'Hungarian', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('HUN', 'Romanian', false, 0.1);
INSERT INTO countrylanguage VALUES ('UZB', 'Karakalpak', false, 2);
INSERT INTO countrylanguage VALUES ('RUS', 'Bashkir', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('VNM', 'Chinese', false, 1.4);
INSERT INTO countrylanguage VALUES ('EST', 'Finnish', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('USA', 'Italian', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('AGO', 'Chokwe', false, 4.1999998);
INSERT INTO countrylanguage VALUES ('AUS', 'Vietnamese', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('BGD', 'Santhali', false, 0.1);
INSERT INTO countrylanguage VALUES ('BEL', 'Turkish', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('BEN', 'Somba', false, 6.6999998);
INSERT INTO countrylanguage VALUES ('BFA', 'Dyula', false, 2.5999999);
INSERT INTO countrylanguage VALUES ('ERI', 'Saho', false, 3);
INSERT INTO countrylanguage VALUES ('ZAF', 'Tswana', false, 8.1000004);
INSERT INTO countrylanguage VALUES ('ETH', 'Sidamo', false, 3.2);
INSERT INTO countrylanguage VALUES ('PHL', 'Waray-waray', false, 3.8);
INSERT INTO countrylanguage VALUES ('GEO', 'Abhyasi', false, 1.7);
INSERT INTO countrylanguage VALUES ('GHA', 'Joruba', false, 1.3);
INSERT INTO countrylanguage VALUES ('GIN', 'Yalunka', false, 2.9000001);
INSERT INTO countrylanguage VALUES ('GNB', 'Mandyako', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('IDN', 'Batakki', false, 2.2);
INSERT INTO countrylanguage VALUES ('IND', 'Urdu', false, 5.0999999);
INSERT INTO countrylanguage VALUES ('IRN', 'Mazandarani', false, 3.5999999);
INSERT INTO countrylanguage VALUES ('ITA', 'Albaniana', false, 0.2);
INSERT INTO countrylanguage VALUES ('AUT', 'Polish', false, 0.2);
INSERT INTO countrylanguage VALUES ('JPN', 'Ainu', false, 0);
INSERT INTO countrylanguage VALUES ('YUG', 'Macedonian', false, 0.5);
INSERT INTO countrylanguage VALUES ('CMR', 'Mandara', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('CAN', 'Polish', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('KAZ', 'Tatar', false, 2);
INSERT INTO countrylanguage VALUES ('KEN', 'Gusii', false, 6.0999999);
INSERT INTO countrylanguage VALUES ('CAF', 'Mbum', false, 6.4000001);
INSERT INTO countrylanguage VALUES ('CHN', 'Uighur', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('KGZ', 'Kazakh', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('COG', 'Sango', false, 2.5999999);
INSERT INTO countrylanguage VALUES ('COD', 'Ngala and Bangi', false, 5.8000002);
INSERT INTO countrylanguage VALUES ('LVA', 'Lithuanian', false, 1.2);
INSERT INTO countrylanguage VALUES ('LBR', 'Mano', false, 7.1999998);
INSERT INTO countrylanguage VALUES ('MYS', 'Dusun', false, 1.1);
INSERT INTO countrylanguage VALUES ('MLI', 'Songhai', false, 6.9000001);
INSERT INTO countrylanguage VALUES ('MRT', 'Zenaga', false, 1.2);
INSERT INTO countrylanguage VALUES ('MUS', 'Marathi', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('MEX', 'Otomí', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('FSM', 'Wolea', false, 3.7);
INSERT INTO countrylanguage VALUES ('MNG', 'Dariganga', false, 1.4);
INSERT INTO countrylanguage VALUES ('MOZ', 'Tswa', false, 6);
INSERT INTO countrylanguage VALUES ('MMR', 'Chin', false, 2.2);
INSERT INTO countrylanguage VALUES ('NAM', 'Caprivi', false, 4.6999998);
INSERT INTO countrylanguage VALUES ('NPL', 'Newari', false, 3.7);
INSERT INTO countrylanguage VALUES ('NGA', 'Kanuri', false, 4.0999999);
INSERT INTO countrylanguage VALUES ('PAK', 'Balochi', false, 3);
INSERT INTO countrylanguage VALUES ('PAN', 'Arabic', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('MNP', 'Carolinian', false, 4.8000002);
INSERT INTO countrylanguage VALUES ('FRA', 'Turkish', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('ROM', 'Serbo-Croatian', false, 0.1);
INSERT INTO countrylanguage VALUES ('SWE', 'Norwegian', false, 0.5);
INSERT INTO countrylanguage VALUES ('DEU', 'Polish', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('ZMB', 'Nsenga', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('SEN', 'Soninke', false, 1.3);
INSERT INTO countrylanguage VALUES ('SLE', 'Ful', false, 3.8);
INSERT INTO countrylanguage VALUES ('SDN', 'Zande', false, 2.7);
INSERT INTO countrylanguage VALUES ('TWN', 'Paiwan', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('TZA', 'Nyakusa', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('DNK', 'Swedish', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('THA', 'Kuy', false, 1.1);
INSERT INTO countrylanguage VALUES ('TGO', 'Moba', false, 5.4000001);
INSERT INTO countrylanguage VALUES ('TCD', 'Hadjarai', false, 6.6999998);
INSERT INTO countrylanguage VALUES ('CZE', 'Silesiana', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('UGA', 'Lango', false, 5.9000001);
INSERT INTO countrylanguage VALUES ('UKR', 'Belorussian', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('HUN', 'Slovak', false, 0.1);
INSERT INTO countrylanguage VALUES ('UZB', 'Tatar', false, 1.8);
INSERT INTO countrylanguage VALUES ('RUS', 'Chechen', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('VNM', 'Khmer', false, 1.4);
INSERT INTO countrylanguage VALUES ('USA', 'Chinese', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('AGO', 'Luvale', false, 3.5999999);
INSERT INTO countrylanguage VALUES ('AUS', 'Serbo-Croatian', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('BGD', 'Tripuri', false, 0.1);
INSERT INTO countrylanguage VALUES ('BEN', 'Ful', false, 5.5999999);
INSERT INTO countrylanguage VALUES ('ZAF', 'Southsotho', false, 7.5999999);
INSERT INTO countrylanguage VALUES ('ETH', 'Walaita', false, 2.8);
INSERT INTO countrylanguage VALUES ('PHL', 'Pampango', false, 3);
INSERT INTO countrylanguage VALUES ('GIN', 'Loma', false, 2.3);
INSERT INTO countrylanguage VALUES ('IDN', 'Bugi', false, 2.2);
INSERT INTO countrylanguage VALUES ('IND', 'Gujarati', false, 4.8000002);
INSERT INTO countrylanguage VALUES ('IRN', 'Balochi', false, 2.3);
INSERT INTO countrylanguage VALUES ('ITA', 'Slovene', false, 0.2);
INSERT INTO countrylanguage VALUES ('AUT', 'Czech', false, 0.2);
INSERT INTO countrylanguage VALUES ('CMR', 'Maka', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('CAN', 'Spanish', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('KEN', 'Meru', false, 5.5);
INSERT INTO countrylanguage VALUES ('CHN', 'Yi', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('KGZ', 'Tadzhik', false, 0.80000001);
INSERT INTO countrylanguage VALUES ('COD', 'Rundi', false, 3.8);
INSERT INTO countrylanguage VALUES ('LBR', 'Loma', false, 5.8000002);
INSERT INTO countrylanguage VALUES ('MOZ', 'Chuabo', false, 5.6999998);
INSERT INTO countrylanguage VALUES ('MMR', 'Kachin', false, 1.4);
INSERT INTO countrylanguage VALUES ('NAM', 'San', false, 1.9);
INSERT INTO countrylanguage VALUES ('NPL', 'Hindi', false, 3);
INSERT INTO countrylanguage VALUES ('NGA', 'Edo', false, 3.3);
INSERT INTO countrylanguage VALUES ('PAK', 'Hindko', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('SLE', 'Kuranko', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('SDN', 'Bari', false, 2.5);
INSERT INTO countrylanguage VALUES ('TZA', 'Chaga and Pare', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('DNK', 'Norwegian', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('TGO', 'Naudemba', false, 4.0999999);
INSERT INTO countrylanguage VALUES ('TCD', 'Tandjile', false, 6.5);
INSERT INTO countrylanguage VALUES ('CZE', 'Romani', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('UGA', 'Lugbara', false, 4.6999998);
INSERT INTO countrylanguage VALUES ('UKR', 'Polish', false, 0.1);
INSERT INTO countrylanguage VALUES ('RUS', 'Mordva', false, 0.5);
INSERT INTO countrylanguage VALUES ('VNM', 'Nung', false, 1.1);
INSERT INTO countrylanguage VALUES ('USA', 'Tagalog', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('AGO', 'Ambo', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('AUS', 'German', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('ZAF', 'Tsonga', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('PHL', 'Pangasinan', false, 1.8);
INSERT INTO countrylanguage VALUES ('IDN', 'Banja', false, 1.8);
INSERT INTO countrylanguage VALUES ('IND', 'Kannada', false, 3.9000001);
INSERT INTO countrylanguage VALUES ('IRN', 'Arabic', false, 2.2);
INSERT INTO countrylanguage VALUES ('ITA', 'Romani', false, 0.2);
INSERT INTO countrylanguage VALUES ('AUT', 'Romanian', false, 0.2);
INSERT INTO countrylanguage VALUES ('CMR', 'Masana', false, 3.9000001);
INSERT INTO countrylanguage VALUES ('CAN', 'Portuguese', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('KEN', 'Nyika', false, 4.8000002);
INSERT INTO countrylanguage VALUES ('CHN', 'Tujia', false, 0.5);
INSERT INTO countrylanguage VALUES ('COD', 'Teke', false, 2.7);
INSERT INTO countrylanguage VALUES ('LBR', 'Malinke', false, 5.0999999);
INSERT INTO countrylanguage VALUES ('MOZ', 'Ronga', false, 3.7);
INSERT INTO countrylanguage VALUES ('MMR', 'Kayah', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('NAM', 'German', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('NGA', 'Tiv', false, 2.3);
INSERT INTO countrylanguage VALUES ('PAK', 'Brahui', false, 1.2);
INSERT INTO countrylanguage VALUES ('SLE', 'Yalunka', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('SDN', 'Fur', false, 2.0999999);
INSERT INTO countrylanguage VALUES ('TZA', 'Luguru', false, 4.9000001);
INSERT INTO countrylanguage VALUES ('TGO', 'Gurma', false, 3.4000001);
INSERT INTO countrylanguage VALUES ('TCD', 'Gorane', false, 6.1999998);
INSERT INTO countrylanguage VALUES ('CZE', 'Hungarian', false, 0.2);
INSERT INTO countrylanguage VALUES ('UGA', 'Gisu', false, 4.5);
INSERT INTO countrylanguage VALUES ('RUS', 'Kazakh', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('VNM', 'Miao', false, 0.89999998);
INSERT INTO countrylanguage VALUES ('USA', 'Polish', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('AGO', 'Luchazi', false, 2.4000001);
INSERT INTO countrylanguage VALUES ('ZAF', 'Swazi', false, 2.5);
INSERT INTO countrylanguage VALUES ('PHL', 'Maguindanao', false, 1.4);
INSERT INTO countrylanguage VALUES ('IDN', 'Bali', false, 1.7);
INSERT INTO countrylanguage VALUES ('IND', 'Malajalam', false, 3.5999999);
INSERT INTO countrylanguage VALUES ('IRN', 'Bakhtyari', false, 1.7);
INSERT INTO countrylanguage VALUES ('CAN', 'Punjabi', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('KEN', 'Masai', false, 1.6);
INSERT INTO countrylanguage VALUES ('CHN', 'Mongolian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('COD', 'Boa', false, 2.3);
INSERT INTO countrylanguage VALUES ('MOZ', 'Marendje', false, 3.5);
INSERT INTO countrylanguage VALUES ('NGA', 'Ijo', false, 1.8);
INSERT INTO countrylanguage VALUES ('SDN', 'Chilluk', false, 1.7);
INSERT INTO countrylanguage VALUES ('TZA', 'Shambala', false, 4.3000002);
INSERT INTO countrylanguage VALUES ('UGA', 'Acholi', false, 4.4000001);
INSERT INTO countrylanguage VALUES ('RUS', 'Avarian', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('VNM', 'Man', false, 0.69999999);
INSERT INTO countrylanguage VALUES ('USA', 'Korean', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('ZAF', 'Venda', false, 2.2);
INSERT INTO countrylanguage VALUES ('PHL', 'Maranao', false, 1.3);
INSERT INTO countrylanguage VALUES ('IND', 'Orija', false, 3.3);
INSERT INTO countrylanguage VALUES ('IRN', 'Turkmenian', false, 1.6);
INSERT INTO countrylanguage VALUES ('CAN', 'Ukrainian', false, 0.60000002);
INSERT INTO countrylanguage VALUES ('KEN', 'Turkana', false, 1.4);
INSERT INTO countrylanguage VALUES ('CHN', 'Tibetan', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('COD', 'Chokwe', false, 1.8);
INSERT INTO countrylanguage VALUES ('MOZ', 'Nyanja', false, 3.3);
INSERT INTO countrylanguage VALUES ('NGA', 'Bura', false, 1.6);
INSERT INTO countrylanguage VALUES ('SDN', 'Lotuko', false, 1.5);
INSERT INTO countrylanguage VALUES ('TZA', 'Gogo', false, 3.9000001);
INSERT INTO countrylanguage VALUES ('UGA', 'Rwanda', false, 3.2);
INSERT INTO countrylanguage VALUES ('RUS', 'Mari', false, 0.40000001);
INSERT INTO countrylanguage VALUES ('USA', 'Vietnamese', false, 0.2);
INSERT INTO countrylanguage VALUES ('ZAF', 'Ndebele', false, 1.5);
INSERT INTO countrylanguage VALUES ('IND', 'Punjabi', false, 2.8);
INSERT INTO countrylanguage VALUES ('CAN', 'Dutch', false, 0.5);
INSERT INTO countrylanguage VALUES ('CHN', 'Puyi', false, 0.2);
INSERT INTO countrylanguage VALUES ('TZA', 'Ha', false, 3.5);
INSERT INTO countrylanguage VALUES ('RUS', 'Udmur', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('USA', 'Japanese', false, 0.2);
INSERT INTO countrylanguage VALUES ('IND', 'Asami', false, 1.5);
INSERT INTO countrylanguage VALUES ('CAN', 'Eskimo Languages', false, 0.1);
INSERT INTO countrylanguage VALUES ('CHN', 'Dong', false, 0.2);
INSERT INTO countrylanguage VALUES ('RUS', 'Belorussian', false, 0.30000001);
INSERT INTO countrylanguage VALUES ('USA', 'Portuguese', false, 0.2);


ALTER TABLE city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);

ALTER TABLE country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);

ALTER TABLE countrylanguage
    ADD CONSTRAINT countrylanguage_pkey PRIMARY KEY (countrycode, language);

ALTER TABLE countrylanguage
    ADD CONSTRAINT countrylanguage_countrycode_fkey FOREIGN KEY (countrycode) REFERENCES country(code);

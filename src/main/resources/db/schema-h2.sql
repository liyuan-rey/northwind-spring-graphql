--
-- H2 database dump
--

-- SET client_encoding = 'UTF8';



---
--- drop tables
---


-- DROP TABLE IF EXISTS customer_customer_demo;
-- DROP TABLE IF EXISTS customer_demographics;
-- DROP TABLE IF EXISTS employee_territories;
-- DROP TABLE IF EXISTS order_details;
-- DROP TABLE IF EXISTS orders;
-- DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS product;
-- DROP TABLE IF EXISTS shippers;
DROP TABLE IF EXISTS supplier;
-- DROP TABLE IF EXISTS territories;
-- DROP TABLE IF EXISTS us_states;
DROP TABLE IF EXISTS category;
-- DROP TABLE IF EXISTS region;
-- DROP TABLE IF EXISTS employees;


--
-- Name: category; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE category (
    id IDENTITY NOT NULL,
    name varchar(15) NOT NULL,
    description clob,
    picture blob
);


--
-- Name: product; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE product (
    id IDENTITY NOT NULL,
    name varchar(40) NOT NULL,
    supplier_id bigint,
    category_id bigint,
    quantity_per_unit varchar(20),
    unit_price decimal(19,2),
    units_in_stock integer,
    units_on_order integer,
    reorder_level integer,
    discontinued integer NOT NULL
);


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE supplier (
    id IDENTITY NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24),
    homepage varchar(255)
);



--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO category (id, name, description, picture) VALUES (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (3, 'Confections', 'Desserts, candies, and sweet breads', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (4, 'Dairy product', 'Cheeses', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (6, 'Meat/Poultry', 'Prepared meats', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (7, 'Produce', 'Dried fruit and bean curd', RAWTOHEX('\x'));
INSERT INTO category (id, name, description, picture) VALUES (8, 'Seafood', 'Seaweed and fish', RAWTOHEX('\x'));


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO product VALUES (1, 'Chai', 8, 1, '10 boxes x 30 bags', 18, 39, 0, 10, 1);
INSERT INTO product VALUES (2, 'Chang', 1, 1, '24 - 12 oz bottles', 19, 17, 40, 25, 1);
INSERT INTO product VALUES (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10, 13, 70, 25, 0);
INSERT INTO product VALUES (4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22, 53, 0, 0, 0);
INSERT INTO product VALUES (5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.3500004, 0, 0, 0, 1);
INSERT INTO product VALUES (6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25, 120, 0, 25, 0);
INSERT INTO product VALUES (7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30, 15, 0, 10, 0);
INSERT INTO product VALUES (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40, 6, 0, 0, 0);
INSERT INTO product VALUES (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97, 29, 0, 0, 1);
INSERT INTO product VALUES (10, 'Ikura', 4, 8, '12 - 200 ml jars', 31, 31, 0, 0, 0);
INSERT INTO product VALUES (11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21, 22, 30, 30, 0);
INSERT INTO product VALUES (12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38, 86, 0, 0, 0);
INSERT INTO product VALUES (13, 'Konbu', 6, 8, '2 kg box', 6, 24, 0, 5, 0);
INSERT INTO product VALUES (14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, 0);
INSERT INTO product VALUES (15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 13, 39, 0, 5, 0);
INSERT INTO product VALUES (16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.4500008, 29, 0, 10, 0);
INSERT INTO product VALUES (17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39, 0, 0, 0, 1);
INSERT INTO product VALUES (18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5, 42, 0, 0, 0);
INSERT INTO product VALUES (19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.19999981, 25, 0, 5, 0);
INSERT INTO product VALUES (20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81, 40, 0, 0, 0);
INSERT INTO product VALUES (21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10, 3, 40, 5, 0);
INSERT INTO product VALUES (22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21, 104, 0, 25, 0);
INSERT INTO product VALUES (23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9, 61, 0, 25, 0);
INSERT INTO product VALUES (24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5, 20, 0, 0, 1);
INSERT INTO product VALUES (25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14, 76, 0, 30, 0);
INSERT INTO product VALUES (26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.2299995, 15, 0, 0, 0);
INSERT INTO product VALUES (27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9000015, 49, 0, 30, 0);
INSERT INTO product VALUES (28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.5999985, 26, 0, 0, 1);
INSERT INTO product VALUES (29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.790001, 0, 0, 0, 1);
INSERT INTO product VALUES (30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.8899994, 10, 0, 15, 0);
INSERT INTO product VALUES (31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5, 0, 70, 20, 0);
INSERT INTO product VALUES (32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32, 9, 40, 25, 0);
INSERT INTO product VALUES (33, 'Geitost', 15, 4, '500 g', 2.5, 112, 0, 20, 0);
INSERT INTO product VALUES (34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14, 111, 0, 15, 0);
INSERT INTO product VALUES (35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18, 20, 0, 15, 0);
INSERT INTO product VALUES (36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19, 112, 0, 20, 0);
INSERT INTO product VALUES (37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26, 11, 50, 25, 0);
INSERT INTO product VALUES (38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5, 17, 0, 15, 0);
INSERT INTO product VALUES (39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18, 69, 0, 5, 0);
INSERT INTO product VALUES (40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.3999996, 123, 0, 30, 0);
INSERT INTO product VALUES (41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.64999962, 85, 0, 10, 0);
INSERT INTO product VALUES (42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14, 26, 0, 0, 1);
INSERT INTO product VALUES (43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46, 17, 10, 25, 0);
INSERT INTO product VALUES (44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.4500008, 27, 0, 15, 0);
INSERT INTO product VALUES (45, 'Rogede sild', 21, 8, '1k pkg.', 9.5, 5, 70, 15, 0);
INSERT INTO product VALUES (46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12, 95, 0, 0, 0);
INSERT INTO product VALUES (47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5, 36, 0, 0, 0);
INSERT INTO product VALUES (48, 'Chocolade', 22, 3, '10 pkgs.', 12.75, 15, 70, 25, 0);
INSERT INTO product VALUES (49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20, 10, 60, 15, 0);
INSERT INTO product VALUES (50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25, 65, 0, 30, 0);
INSERT INTO product VALUES (51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53, 20, 0, 10, 0);
INSERT INTO product VALUES (52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7, 38, 0, 25, 0);
INSERT INTO product VALUES (53, 'Perth Pasties', 24, 6, '48 pieces', 32.7999992, 0, 0, 0, 1);
INSERT INTO product VALUES (54, 'Tourtière', 25, 6, '16 pies', 7.44999981, 21, 0, 10, 0);
INSERT INTO product VALUES (55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24, 115, 0, 20, 0);
INSERT INTO product VALUES (56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38, 21, 10, 30, 0);
INSERT INTO product VALUES (57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5, 36, 0, 20, 0);
INSERT INTO product VALUES (58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25, 62, 0, 20, 0);
INSERT INTO product VALUES (59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55, 79, 0, 0, 0);
INSERT INTO product VALUES (60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34, 19, 0, 0, 0);
INSERT INTO product VALUES (61, 'Sirop d''érable', 29, 2, '24 - 500 ml bottles', 28.5, 113, 0, 25, 0);
INSERT INTO product VALUES (62, 'Tarte au sucre', 29, 3, '48 pies', 49.2999992, 17, 0, 0, 0);
INSERT INTO product VALUES (63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9000015, 24, 0, 5, 0);
INSERT INTO product VALUES (64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25, 22, 80, 30, 0);
INSERT INTO product VALUES (65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.0499992, 76, 0, 0, 0);
INSERT INTO product VALUES (66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17, 4, 100, 20, 0);
INSERT INTO product VALUES (67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14, 52, 0, 10, 0);
INSERT INTO product VALUES (68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5, 6, 10, 15, 0);
INSERT INTO product VALUES (69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36, 26, 0, 15, 0);
INSERT INTO product VALUES (70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15, 15, 10, 30, 0);
INSERT INTO product VALUES (71, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5, 26, 0, 0, 0);
INSERT INTO product VALUES (72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.7999992, 14, 0, 0, 0);
INSERT INTO product VALUES (73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15, 101, 0, 5, 0);
INSERT INTO product VALUES (74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10, 4, 20, 5, 0);
INSERT INTO product VALUES (75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75, 125, 0, 25, 0);
INSERT INTO product VALUES (76, 'Lakkalikööri', 23, 1, '500 ml', 18, 57, 0, 20, 0);
INSERT INTO product VALUES (77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13, 32, 0, 15, 0);


--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO supplier VALUES (1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL, NULL);
INSERT INTO supplier VALUES (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL, '#CAJUN.HTM#');
INSERT INTO supplier VALUES (3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', NULL);
INSERT INTO supplier VALUES (4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL, NULL);
INSERT INTO supplier VALUES (5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL, NULL);
INSERT INTO supplier VALUES (6, 'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
INSERT INTO supplier VALUES (7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL);
INSERT INTO supplier VALUES (8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL, NULL);
INSERT INTO supplier VALUES (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', NULL);
INSERT INTO supplier VALUES (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL, NULL);
INSERT INTO supplier VALUES (11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL, NULL);
INSERT INTO supplier VALUES (12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Germany', '(069) 992755', NULL, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#');
INSERT INTO supplier VALUES (13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714', NULL);
INSERT INTO supplier VALUES (14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#');
INSERT INTO supplier VALUES (15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Norway', '(0)2-953010', NULL, NULL);
INSERT INTO supplier VALUES (16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', NULL, NULL);
INSERT INTO supplier VALUES (17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL, NULL);
INSERT INTO supplier VALUES (18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL);
INSERT INTO supplier VALUES (19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', NULL);
INSERT INTO supplier VALUES (20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapore', '555-8787', NULL, NULL);
INSERT INTO supplier VALUES (21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', NULL, '2800', 'Denmark', '43844108', '43844115', NULL);
INSERT INTO supplier VALUES (22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', NULL);
INSERT INTO supplier VALUES (23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finland', '(953) 10956', NULL, NULL);
INSERT INTO supplier VALUES (24, 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
INSERT INTO supplier VALUES (25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL, NULL);
INSERT INTO supplier VALUES (26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667', NULL);
INSERT INTO supplier VALUES (27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'France', '85.57.00.07', NULL, NULL);
INSERT INTO supplier VALUES (28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', NULL, '74000', 'France', '38.76.98.06', '38.76.98.58', NULL);
INSERT INTO supplier VALUES (29, 'Forêts d''érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);



--
-- Name: pk_category; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

-- ALTER TABLE category
--     ADD CONSTRAINT pk_category PRIMARY KEY (id);


--
-- Name: pk_product; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

-- ALTER TABLE product
--     ADD CONSTRAINT pk_product PRIMARY KEY (id);


--
-- Name: pk_supplier; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

-- ALTER TABLE supplier
--     ADD CONSTRAINT pk_supplier PRIMARY KEY (id);


--
-- Name: fk_product_category; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE product
    ADD CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES category;


--
-- Name: fk_product_supplier; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE product
    ADD CONSTRAINT fk_product_supplier FOREIGN KEY (supplier_id) REFERENCES supplier;

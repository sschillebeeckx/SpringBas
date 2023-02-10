CREATE TABLE ABISCOMPANIES
(CONO      INT primary key,
 CONAME    CHAR(45) NOT NULL,
 COSTREET  VARCHAR(45) NOT NULL,
 COSTRNO   VARCHAR(10),
 COTOWN    CHAR(45) NOT NULL,
 COTOWNNO  CHAR(10),
 COCOUNTR  CHAR(4),
 COTEL     CHAR(16),
 COVAT     CHAR(11),
 COBANKNO  CHAR(14)
);

CREATE TABLE ABISPERSONS
(PNO         INT  primary key,
 PLNAME      CHAR(40) NOT NULL,
 PFNAME      VARCHAR(15),
 PAGE        INT,
 PEMAIL      VARCHAR(50),
 PPASS       VARCHAR(40),
 PLANG       CHAR(3),
 PA_CONO     INT ,
 CONSTRAINT FK_COMPANY FOREIGN KEY (PA_CONO) REFERENCES ABISCOMPANIES
);

CREATE TABLE ABISCOURSES
(CID       INT  primary key,
 CSTITLE   CHAR(45) NOT NULL,
 CLTITLE   VARCHAR(60),
 CDUR      INT   NOT NULL,
 CAPRICE   NUMERIC(9,2) NOT NULL
);

INSERT INTO ABISCOMPANIES VALUES (1, 'LOC COMPUTER CORP.', 'RING', '189', 'BRUSSEL', '1020 ', 'B' , '02/6784523 ', '345-786-890', NULL);
INSERT INTO ABISCOMPANIES VALUES (2, 'DATAWISHES N.V.', 'AVENUE LAMBERT', '45 B6', 'BRUSSEL', '1060', 'B', '02/3421632 ', '403-146-747', '210-0040988-09');
INSERT INTO ABISCOMPANIES VALUES (3, 'ABIS N.V.', 'DIESTSEVEST', '32', 'LEUVEN', '3000', 'B', '016/245610', '423-345-567', '739-0000673-02');
INSERT INTO ABISCOMPANIES VALUES (4, 'ESCON', 'ANTONIUSLAAN', '2', 'GENT', '8200', 'B', '091/456213', '120-450-002', '009-4568791-45');
INSERT INTO ABISCOMPANIES VALUES (5, 'COVERDAT', 'WARMTESTRAAT', '67', 'NAARDEN', '1411 AR ', 'NL', '08879-3844', NULL, '003-780034-54');
INSERT INTO ABISCOMPANIES VALUES (6, 'ASC COMPANY', 'KAAI 345', '67 b5', 'ANTWERPEN', '2030', 'B', '03/3451298', '567-345-453', '009-0000345-45');
INSERT INTO ABISCOMPANIES VALUES (9, 'TECHNISOFT B.V.', 'ZWARTEWEG', '112', 'ROTTERDAM', '1420-WK', 'NL', '02977-22456', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (10, 'BET MECHANICS NV.', 'INDUSTRIEPARK', '678', 'MECHELEN', '1240', 'B' , '015/348778 ', '009-568-562', '021-0000456-78');
INSERT INTO ABISCOMPANIES VALUES (11, 'CandC INTERNATIONAL', 'GOSWELL ROAD', '521', 'LONDON', 'EC1N7JQ', 'GB', '01 278 2377', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (12, 'BROWN AG', 'HELGA FELD', '3', 'MUNICH', '8906', 'D', '7-6566', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (13, 'FLYGT', 'HOOGSTRAAT', '67 ', 'TERNAT', '1200', 'B', '02/7800056', '900-120-324', '021-456098-45');
INSERT INTO ABISCOMPANIES VALUES (15, 'DIRECT SOFT Ltd.', 'CORPORATION STREET', '14', 'BIRMINGHAM', 'B2 4RN', 'GB' , '021 643 5072', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (17, 'POUDRE BELGE', 'RUE D''EAU', '67', 'NAMUR', '7200', 'B', '042/563409', '900-678-232', '009-4560004-56');
INSERT INTO ABISCOMPANIES VALUES (20, 'OLIVER', 'GASTSTRAAT', '243', 'HASSELT', '3500', 'B', '011/459123', '451-546-789', '458-1285006-45');
INSERT INTO ABISCOMPANIES VALUES (21, 'PROCESS', 'DESGUINLEI', '109 B56', 'ANTWERPEN', '2030', 'B', '03/3456723', '789-456-234', '410-4567894-67');
INSERT INTO ABISCOMPANIES VALUES (22, 'BELGISCHE BANK', 'HOOFDSTRAAT', '675', 'ANTWERPEN', '2000', 'B', '03/3451078', '567-231-430', '554-4620439-45');
INSERT INTO ABISCOMPANIES VALUES (25, 'DIEMEN', 'HEERBAAN', '250', 'AMSTERDAM', '1014 BA', 'NL', '01720-45665', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (32, 'BERENDSEN CP', 'EXSELSIORLAAN', '67 B45', 'BRUSSEL', '1220', 'B', '02/4568791', '125-002-021', '009-4587661-12');
INSERT INTO ABISCOMPANIES VALUES (41, 'RALBERG', 'SCHIPHOLWEG', '34', 'LEIDEN', '6574 HK', 'NL', '071-218112', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (42, 'EDUCA Ltd.', 'WORSHIP STREET', '74', 'LONDON', 'EC2A 2EN', 'GB', '01 377 4645', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (43, 'COMPUTRAIN', 'SCHIEDAMSE VEST', '99A', 'ROTTERDAM', '3012', 'NL', '010-4134409', NULL, NULL);
INSERT INTO ABISCOMPANIES VALUES (46, 'ASSUR', 'GRASMARKT', '67', 'GENT', '8000', 'B', '091/450065', '021-102-212', '079-4580056-45');
INSERT INTO ABISCOMPANIES VALUES (52, 'BANC', 'AVENUE LOUISE', '78 B4', 'BRUSSEL ', '1000', 'B', '02/4561236 ', '002-456-442', '079-0007549-05');
INSERT INTO ABISCOMPANIES VALUES (104, 'ASCO', 'DEEP LANE', '1A ', 'OXFORD', 'RG211RY', 'GB', '0256 469460', NULL, '000-111111-54');


INSERT INTO ABISPERSONS VALUES (1, 'SMITHS', 'JAN', 42,'jan.smiths@abis.be','js123','NL',3);
INSERT INTO ABISPERSONS VALUES (2, 'TAVERNIER', 'PETER', 53,'peter.tavernier@abis.be','pt456','FR', 3);
INSERT INTO ABISPERSONS VALUES (3, 'DE KEYSER', 'ANN', 31,'ann.dekeyser@abis.be','adk789','NL', 3);
INSERT INTO ABISPERSONS VALUES (5, 'NIEHOF', 'RUUD', 46,'ruud.niehof@computrain.nl','rn123','NL', 43);
INSERT INTO ABISPERSONS VALUES (6, 'VAN HEIJKOOP', 'GERT',26,'gert.vanheijkoop@computrain.nl','gvh456','NL', 43);
INSERT INTO ABISPERSONS VALUES (7, 'DE GROOT', 'ATY',58,'aty.degroot@computrain.nl','adg789','NL', 43);
INSERT INTO ABISPERSONS VALUES (8, 'PEREZ', 'MARIA', 35,'maria.perez@datawishes.be','mp123','FR', 2);
INSERT INTO ABISPERSONS VALUES (9, 'LIVIER', 'FRANCOIS', 52,'francois.livier@datawishes.be','fl456','FR', 2);
INSERT INTO ABISPERSONS VALUES (10, 'LUTZ', 'CHRISTINE', 27,'christine.lutz@datawishes.be','cl789','DE',2);
INSERT INTO ABISPERSONS VALUES (11, 'LOOSE', 'KOEN', 29,'koen.loose@gmail.com','kl123','NL', NULL);
INSERT INTO ABISPERSONS VALUES (12, 'BENOIT', 'PHILIP', 30,'philip.benoit@loc.com','pb456','FR', 1);
INSERT INTO ABISPERSONS VALUES (13, 'BENOIT', 'DIRK', 41,'dirk.benoit@loc.com','db789','NL', 1);
INSERT INTO ABISPERSONS VALUES (14, 'DETROIT', 'DANNY', 44,'danny.detroit@berendsen.be','dd123','NL', 32);
INSERT INTO ABISPERSONS VALUES (15, 'SPENCER', 'THEODORE', 34,'theodore.spencer@direct.uk','ts456','EN', 15);
INSERT INTO ABISPERSONS VALUES (17, 'SCHUMACHER', 'RAF', 28,'raf.schumacher@brown.de','rs456','DE', 12);
INSERT INTO ABISPERSONS VALUES (18, 'GELADE', 'BENNY',42,'benny.gelade@banc.be','bg789','NL', 52);
INSERT INTO ABISPERSONS VALUES (19, 'COPPIETERS', 'CARLA', 55,'carla.coppieters@banc.be','cc123','NL', 52);
INSERT INTO ABISPERSONS VALUES (20, 'DE WINDT', 'BART', 36,'bart.dewindt@banc.be','bdw123','NL', 52);
INSERT INTO ABISPERSONS VALUES (21, 'DE SCHRIJVER', 'ERIK', 58,'erik.deschrijver@process.be','eds456','NL', 21);
INSERT INTO ABISPERSONS VALUES (22, 'HENDERSON', 'DAVID', 24,'david.henderson@belgischebank.be','dh789','EN', 22);
INSERT INTO ABISPERSONS VALUES (23, 'DELANGHE', 'GUIDO', 64,'guido.delanghe@belgischebank.be','gd123','NL', 22);
INSERT INTO ABISPERSONS VALUES (24, 'VAN DE BROECK', 'LARS', 34,'lars.vandebroeck@coverdat.nl','lvdb456','NL', 5);
INSERT INTO ABISPERSONS VALUES (25, 'MEURIS', 'FRITS', 63,'frits.meuris@coverdat.nl','fm789','NL', 5);
INSERT INTO ABISPERSONS VALUES (26, 'HEBBELYNCK', 'HENK', 63,'henk.hebbelynck@coverdat.nl','hh123','NL', 5);
INSERT INTO ABISPERSONS VALUES (28, 'TYTGAT', 'ALEX', 37,'alex.tytgat@assur.be','at456','NL',46);
INSERT INTO ABISPERSONS VALUES (29, 'DEVISSER', 'JULES', 42,'jules.devisser@assur.be','jd789','NL', 46);
INSERT INTO ABISPERSONS VALUES (32, 'BUENK', 'GERT-JAN ', 54,'gertjan.buenk@technisoft.nl','gjb123','NL', 9);
INSERT INTO ABISPERSONS VALUES (33, 'PIELAGE', 'ROB', 35,'rob.pielage@diemen.nl','rp456','NL', 25);
INSERT INTO ABISPERSONS VALUES (34, 'DE BRUYN', 'PATRICK', 50,'patrick.debruyn@asc.be','pdb789','NL', 6);
INSERT INTO ABISPERSONS VALUES (35, 'DE SMET', 'JOREN', 23,'joren.desmet@flygt.be','jds123','NL', 13);
INSERT INTO ABISPERSONS VALUES (36, 'ADAMSON', 'BRUCE', 30,'bruce.adamson@candc.uk','ba456','EN', 11);
INSERT INTO ABISPERSONS VALUES (43, 'DEHEM', 'JEAN', 53,'jean.dehem@poudre.be','jd789','FR', 17);
INSERT INTO ABISPERSONS VALUES (47, 'GOYENS', 'FIONA', 29,'fiona.goyens@berendsen.be','fg123','FR', 32);
INSERT INTO ABISPERSONS VALUES (48, 'GERRIES', 'GLORIA', 32,'gloria.gerries@berendsen.be','fg456','FR', 32);
INSERT INTO ABISPERSONS VALUES (49, 'DE CORTE', 'EDMOND', 63,'edmond.decorte@berendsen.be','edc789','NL', 32);
INSERT INTO ABISPERSONS VALUES (50, 'DE WILDE', 'PIERRE', 57,'pierre.dewilde@berendsen.be','pdw789','FR', 32);
INSERT INTO ABISPERSONS VALUES (56, 'PARKER', 'LEWIS', 24,'lewis.parker@educa.uk','lp123','EN', 42);
INSERT INTO ABISPERSONS VALUES (66, 'MOORS', 'SYLVAIN', 62,'sylvain.moors@escon.be','smo456','NL', 4);
INSERT INTO ABISPERSONS VALUES (87, 'DEWULF', 'NICOLAS', 31,'nicolas.dewulf@betmechanics.be','ndw789','NL', 10);
INSERT INTO ABISPERSONS VALUES (92, 'OLIVER', 'PAUL', 65,'paul.oliver@oliver.be','po789','NL', 20);
INSERT INTO ABISPERSONS VALUES (104, 'NICHOLLS', 'DOUG', 54,'doug.nicholls@asco.uk','dn123','EN', 104);
INSERT INTO ABISPERSONS VALUES (132, 'BUNE', 'JAN', 45,'jan.bune@ralberg.nl','jb456','NL', 41);
INSERT INTO ABISPERSONS VALUES (133, 'KOOPS', 'BERT', 47,'bert.koops@ralberg.nl','bk789','NL', 41);
INSERT INTO ABISPERSONS VALUES (134, 'MAK', 'LOUIS', 56,'louis.mak@ralberg.nl','lm123','NL',41);
INSERT INTO ABISPERSONS VALUES (135, 'DOE', 'JOHN', 57,'john.doe@gmail.com','jd456','EN', NULL);


INSERT INTO ABISCOURSES VALUES (7800, 'IMSADFII', 'Development of conversational transactions using IMSADFII', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (7801, 'IMSADFIIADV', 'IMSADFII Advanced Topics', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (7810, 'ADFPLUS', 'ADFPLUS preprocessors and utilities', 2, 550.00);
INSERT INTO ABISCOURSES VALUES (7820, 'IMSDB', 'IMS/DB application programming ', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (7830, 'IMSDC', 'IMS/DC application programming ', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (7840, 'IMSDBIMPL', 'Implementation of physical IMS data bases', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (7850, 'DB2BAS', 'DB2, an overview', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (7890, 'ISPF', 'ISPF dialog management services', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (7900, 'SQLWS', 'Workshop SQL', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (8001, 'SYSDEV', 'System development : management and methodology', 2, 550.00);
INSERT INTO ABISCOURSES VALUES (8002, 'PROJMAN', 'Projectmanagement', 4, 550.00);
INSERT INTO ABISCOURSES VALUES (8003, 'SYSANALYSIS', 'System analysis', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (8004, 'SYSDESIGN', 'System design', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (8005, 'STRUCPROG', 'Structured Programming', 5, 550.00);
INSERT INTO ABISCOURSES VALUES (8006, 'TECHWRITE', 'Writing, evaluation and correction of technical manuals', 1, 475.00);
INSERT INTO ABISCOURSES VALUES (8031, 'SAS1', 'SAS fundamentals course', 3, 550.00);
INSERT INTO ABISCOURSES VALUES (8032, 'SASADV', 'Advanced SAS course', 2, 550.00);
INSERT INTO ABISCOURSES VALUES (8041, 'CAPPLAN', 'Capacity planning : technics and strategies', 4, 550.00);
INSERT INTO ABISCOURSES VALUES (8043, 'PCLAN', 'Seminar : PC LAN', 1, 500.00);
INSERT INTO ABISCOURSES VALUES (8051, 'PCDOS', 'Workshop PC-DOS', 2, 375.00);
INSERT INTO ABISCOURSES VALUES (8052, 'DBASEPROG', 'DbaseIII (Plus) programming', 3, 375.00);
INSERT INTO ABISCOURSES VALUES (8053, 'CAD', 'CAD on PC', 1, 375.00);
INSERT INTO ABISCOURSES VALUES (8055, 'LOTUSPROG', 'LOTUS 123 (versie 2) programming', 3, 375.00);
INSERT INTO ABISCOURSES VALUES (8056, 'AUTOCAD', 'Training Autocad', 3, 500.00);

commit;

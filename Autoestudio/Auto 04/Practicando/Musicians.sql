-- (1. Crear la base de datos sin restricciones (Tablas))
CREATE TABLE musician (
    m_no NUMBER(11),
    m_name VARCHAR(20),
    born DATE,
    died DATE,
    born_in NUMBER(11),
    living_in NUMBER(11)
 );
 
CREATE TABLE composer (
    comp_no NUMBER(11),
    comp_is NUMBER(11),
    comp_type VARCHAR(10)
 );
 
CREATE TABLE performer(
    perf_no NUMBER(11),
    perf_is NUMBER(11),
    instrument VARCHAR(10),
    perf_type VARCHAR(10)
 );
 
CREATE TABLE place(
    place_no NUMBER(11),
    place_town VARCHAR(20),
    place_country VARCHAR(20)
 );
 
 CREATE TABLE band(
    band_no NUMBER(11),
    band_name VARCHAR(20),
    band_home NUMBER(11),
    band_type VARCHAR(10),
    b_date DATE,
    band_contact NUMBER(11)
 );
 
CREATE TABLE performance (
    pfrmnc_no NUMBER(11),
    gave NUMBER(11),
    performed NUMBER(11),
    conducted_by NUMBER(11),
    performed_in NUMBER(11)
);

CREATE TABLE concert (
    concert_no NUMBER(11),
    concert_venue VARCHAR2(20),
    concert_in NUMBER(11) NOT NULL,
    con_date DATE,
    concert_orgniser NUMBER(11)
);

CREATE TABLE composition(
    c_no NUMBER(11),
    comp_date DATE,
    c_title VARCHAR(40),
    c_in NUMBER(11)
 );
 
CREATE TABLE has_composed(
    cmpr_no NUMBER(11),
    cmpn_no NUMBER(11)
 );
 
CREATE TABLE plays_in(
    player NUMBER(11),
    band_id NUMBER(11)
 );
 
 -- (2. Adicionar las restricciones a la base de datos  (Atributos, Primarias, Únicas, Foraneas))
 -- Tablas:
 
 -- place
 ALTER TABLE place ADD (
    CONSTRAINT PK_PLACE PRIMARY KEY(place_no)
);

-- musician
ALTER TABLE musician ADD (
    CONSTRAINT PK_MUSICIAN  PRIMARY KEY(m_no),
    CONSTRAINT FK_MUSICIAN_BORN_IN FOREIGN KEY(born_in) REFERENCES place(place_no),
    CONSTRAINT FK_MUSICIAN_LIVING_IN FOREIGN KEY(living_in) REFERENCES place(place_no)
);

 -- performer
 ALTER TABLE performer ADD (
    CONSTRAINT PK_PERFORMER PRIMARY KEY(perf_no),
    CONSTRAINT FK_PERFORMER_PERF_IS FOREIGN KEY(perf_is) REFERENCES musician(m_no)
);
ALTER TABLE performer MODIFY  instrument NOT NULL;

--composer
ALTER TABLE composer ADD (
    CONSTRAINT PK_COMPOSER PRIMARY KEY(comp_no),
    CONSTRAINT FK_COMPOSER_COMP_IS FOREIGN KEY(comp_is) REFERENCES musician(m_no)
);
ALTER TABLE composer MODIFY comp_is NOT NULL;

-- Band
ALTER TABLE band ADD (
    CONSTRAINT PK_BAND PRIMARY KEY(band_no),
    CONSTRAINT UK_BAND_BAND_NAME UNIQUE(band_name),
    CONSTRAINT FK_BAND_BAND_HOME FOREIGN KEY(band_home) REFERENCES place(place_no),
    CONSTRAINT FK_BAND_BAND_CONTACT FOREIGN KEY(band_contact) REFERENCES musician(m_no)
);
ALTER TABLE band MODIFY band_home NOT NULL;
ALTER TABLE band MODIFY band_contact NOT NULL;
ALTER TABLE band MODIFY band_name NOT NULL;
-- Composition
--table composition
ALTER TABLE composition ADD (
    CONSTRAINT PK_COMPOSITION PRIMARY KEY(c_no),
    CONSTRAINT FK_COMPOSITION_C_IN FOREIGN KEY(c_in) REFERENCES place(place_no)
);
ALTER TABLE composition MODIFY c_title NOT NULL;

--plays_in
ALTER TABLE plays_in ADD (
    CONSTRAINT PK_PLAYS_IN PRIMARY KEY(player, band_id),
    CONSTRAINT FK_PLAYS_IN_PLAYER FOREIGN KEY(player) REFERENCES performer(perf_no),
    CONSTRAINT FK_PLAYS_IN_BAND_ID FOREIGN KEY(band_id) REFERENCES band(band_no)
);
--has_composed
ALTER TABLE has_composed ADD(
    CONSTRAINT PK_HAS_COMPOSED PRIMARY KEY(cmpr_no,cmpn_no),
    CONSTRAINT FK_HAS_COMPOSED_CMPR_NO FOREIGN KEY(cmpr_no) REFERENCES composer(comp_no),
    CONSTRAINT FK_HAS_COMPOSED_CMPN_NO FOREIGN KEY(cmpn_no) REFERENCES composition(c_no)
);

ALTER TABLE concert ADD (
    CONSTRAINT PK_CONCERT PRIMARY KEY(concert_no),
    CONSTRAINT FK_CONCERT_CONCERT_IN FOREIGN KEY(concert_in) REFERENCES place(place_no),       
    CONSTRAINT FK_CONCERT_CONCERT_ORGNISER FOREIGN KEY(concert_orgniser) REFERENCES musician(m_no)     
);

ALTER TABLE performance ADD (
    CONSTRAINT PERFORMANCE_PK PRIMARY KEY(pfrmnc_no),
    CONSTRAINT FK_PERFORMANCE_GAVE FOREIGN KEY(gave) REFERENCES band(band_no),
    CONSTRAINT FK_PERFORMANCE_PERFORMED FOREIGN KEY(performed) REFERENCES composition(c_no),
    CONSTRAINT FK_PERFORMANCE_CONDUCTED_BY FOREIGN KEY(conducted_by) REFERENCES musician(m_no),
    CONSTRAINT FK_PERFORMANCE_PERFORMED_IN FOREIGN KEY(performed_in) REFERENCES concert(concert_no)
);


--- (3.Poblar la base de datos con los datos iniciales (PoblarOK))
-- place
/* 
SELECT 'INSERT INTO place VALUES ' || '(' || place_no|| ',' ||  CONCAT('''', place_town, '''') ||  ',' || CONCAT('''',  place_country , '''') || ')' || ';'
FROM place
*/
INSERT INTO place VALUES (1,'Manchester','England');
INSERT INTO place VALUES (2,'Edinburgh','Scotland');
INSERT INTO place VALUES (3,'Salzburg','Austria');
INSERT INTO place VALUES (4,'New York','USA');
INSERT INTO place VALUES (5,'Birmingham','England');
INSERT INTO place VALUES (6,'Glasgow','Scotland');
INSERT INTO place VALUES (7,'London','England');
INSERT INTO place VALUES (8,'Chicago','USA');
INSERT INTO place VALUES (9,'Amsterdam','Netherlands');


-- musician
    /* SELECT 'INSERT INTO musician VALUES ' || '(' || m_no|| ',' || CONCAT('''', m_name, '''') || ',' || CONCAT('''', DATE_FORMAT(born,'%d/%m/%Y') , '''')|| ',' || coalesce(CONCAT('''', DATE_FORMAT(died,'%d/%m/%Y'), ''''), 'NULL')||',' || born_in || ',' || living_in ||')' || ';'
FROM musician */
INSERT INTO musician VALUES (1,'Fred Bloggs','02/01/1948',NULL,1,2);
INSERT INTO musician VALUES (2,'John Smith','03/03/1950',NULL,3,4);
INSERT INTO musician VALUES (3,'Helen Smyth','08/08/1948',NULL,4,5);
INSERT INTO musician VALUES (4,'Harriet Smithson','09/05/1909','20/09/1980',5,6);
INSERT INTO musician VALUES (5,'James First','10/06/1965',NULL,7,7);
INSERT INTO musician VALUES (6,'Theo Mengel','12/08/1948',NULL,7,1);
INSERT INTO musician VALUES (7,'Sue Little','21/02/1945',NULL,8,9);
INSERT INTO musician VALUES (8,'Harry Forte','28/02/1951',NULL,1,8);
INSERT INTO musician VALUES (9,'Phil Hot','30/06/1942',NULL,2,7);
INSERT INTO musician VALUES (10,'Jeff Dawn','12/12/1945',NULL,3,6);
INSERT INTO musician VALUES (11,'Rose Spring','25/05/1948',NULL,4,5);
INSERT INTO musician VALUES (12,'Davis Heavan','03/10/1975',NULL,5,4);
INSERT INTO musician VALUES (13,'Lovely Time','28/12/1948',NULL,6,3);
INSERT INTO musician VALUES (14,'Alan Fluff','15/01/1935','15/051997',7,2);
INSERT INTO musician VALUES (15,'Tony Smythe','02/04/1932',NULL,8,1);
INSERT INTO musician VALUES (16,'James Quick','08/08/1924',NULL,9,2);
INSERT INTO musician VALUES (17,'Freda Miles','04/07/1920',NULL,9,3);
INSERT INTO musician VALUES (18,'Elsie James','06/05/1947',NULL,8,5);
INSERT INTO musician VALUES (19,'Andy Jones','08/10/1958',NULL,7,6);
INSERT INTO musician VALUES (20,'Louise Simpson','10/01/1948','02/11/1998',6,6);
INSERT INTO musician VALUES (21,'James Steeple','10/01/1947',NULL,5,6);
INSERT INTO musician VALUES (22,'Steven Chaytors','11/03/1956',NULL,6,7);


-- performer
/* SELECT 'INSERT INTO performer VALUES ' || '(' || perf_no|| ',' || perf_is || ',' || CONCAT('''', instrument, '''') || ',' || CONCAT('''', perf_type, '''')||')' || ';'
FROM performer */
INSERT INTO performer VALUES (1,2,'violin','classical');
INSERT INTO performer VALUES (2,4,'viola','classical');
INSERT INTO performer VALUES (3,6,'banjo','jazz');
INSERT INTO performer VALUES (4,8,'violin','classical');
INSERT INTO performer VALUES (5,12,'guitar','jazz');
INSERT INTO performer VALUES (6,14,'violin','classical');
INSERT INTO performer VALUES (7,16,'trumpet','jazz');
INSERT INTO performer VALUES (8,18,'viola','classical');
INSERT INTO performer VALUES (9,20,'bass','jazz');
INSERT INTO performer VALUES (10,2,'flute','jazz');
INSERT INTO performer VALUES (11,20,'cornet','jazz');
INSERT INTO performer VALUES (12,6,'violin','jazz');
INSERT INTO performer VALUES (13,8,'drums','jazz');
INSERT INTO performer VALUES (14,10,'violin','classical');
INSERT INTO performer VALUES (15,12,'cello','classical');
INSERT INTO performer VALUES (16,14,'viola','classical');
INSERT INTO performer VALUES (17,16,'flute','jazz');
INSERT INTO performer VALUES (18,18,'guitar','not known');
INSERT INTO performer VALUES (19,20,'trombone','jazz');
INSERT INTO performer VALUES (20,3,'horn','jazz');
INSERT INTO performer VALUES (21,5,'violin','jazz');
INSERT INTO performer VALUES (22,7,'cello','classical');
INSERT INTO performer VALUES (23,2,'bass','jazz');
INSERT INTO performer VALUES (24,4,'violin','jazz');
INSERT INTO performer VALUES (25,6,'drums','classical');
INSERT INTO performer VALUES (26,8,'clarinet','jazz');
INSERT INTO performer VALUES (27,10,'bass','jazz');
INSERT INTO performer VALUES (28,12,'viola','classical');
INSERT INTO performer VALUES (29,18,'cello','classical');


-- composer
/* SELECT 'INSERT INTO composer VALUES ' || '(' || comp_no|| ',' || comp_is || ',' || CONCAT('''', comp_type, '''')||')' || ';'
FROM composer */ 
INSERT INTO composer VALUES (1,1,'jazz');
INSERT INTO composer VALUES (2,3,'classical');
INSERT INTO composer VALUES (3,5,'jazz');
INSERT INTO composer VALUES (4,7,'classical');
INSERT INTO composer VALUES (5,9,'jazz');
INSERT INTO composer VALUES (6,11,'rock');
INSERT INTO composer VALUES (7,13,'classical');
INSERT INTO composer VALUES (8,15,'jazz');
INSERT INTO composer VALUES (9,17,'classical');
INSERT INTO composer VALUES (10,19,'jazz');
INSERT INTO composer VALUES (11,10,'rock');
INSERT INTO composer VALUES (12,8,'jazz');


-- band
/* SELECT 'INSERT INTO band VALUES ' || '(' || band_no|| ',' || CONCAT('''', band_name, '''') || ',' || band_home || ',' || CONCAT('''', band_type, '''')|| ',' || coalesce(CONCAT('''', DATE_FORMAT(b_date,'%d/%m/%Y'), ''''), 'NULL') || ',' || band_contact|| ')' || ';'
FROM band */
INSERT INTO band VALUES (1,'ROP',5,'classical','01/01/1930',11);
INSERT INTO band VALUES (2,'AASO',6,'classical',NULL,10);
INSERT INTO band VALUES (3,'The J Bs',8,'jazz',NULL,12);
INSERT INTO band VALUES (4,'BBSO',9,'classical',NULL,21);
INSERT INTO band VALUES (5,'The left Overs',2,'jazz',NULL,8);
INSERT INTO band VALUES (6,'Somebody Loves this',1,'jazz',NULL,6);
INSERT INTO band VALUES (7,'Oh well',4,'classical',NULL,3);
INSERT INTO band VALUES (8,'Swinging strings',4,'classical',NULL,7);
INSERT INTO band VALUES (9,'The Rest',9,'jazz',NULL,16);


-- composition
/* SELECT 'INSERT INTO composition VALUES ' || '(' || c_no|| ',' || coalesce(CONCAT('''', DATE_FORMAT(comp_date,'%d/%m/%Y'), ''''), 'NULL') || ',' || CONCAT('''', c_title, '''') || ',' || c_in || ')' || ';'
FROM composition */
INSERT INTO composition VALUES (1,'17/06/1975','Opus 1',1);
INSERT INTO composition VALUES (2,'21/07/1976','Here Goes',2);
INSERT INTO composition VALUES (3,'14/12/1981','Valiant Knight',3);
INSERT INTO composition VALUES (4,'12/01/1982','Little Piece',4);
INSERT INTO composition VALUES (5,'13/03/1985','Simple Song',5);
INSERT INTO composition VALUES (6,'14/04/1986','Little Swing Song',6);
INSERT INTO composition VALUES (7,'13/05/1987','Fast Journey',7);
INSERT INTO composition VALUES (8,'14/02/1976','Simple Love Song',8);
INSERT INTO composition VALUES (9,'21/01/1982','Complex Rythms',9);
INSERT INTO composition VALUES (10,'23/02/1985','Drumming Rythms',9);
INSERT INTO composition VALUES (11,'18/03/1978','Fast Drumming',8);
INSERT INTO composition VALUES (12,'13/08/1984','Slow Song',7);
INSERT INTO composition VALUES (13,'14/09/1968','Blue Roses',6);
INSERT INTO composition VALUES (14,'15/11/1983','Velvet Rain',5);
INSERT INTO composition VALUES (15,'16/05/1982','Cold Wind',4);
INSERT INTO composition VALUES (16,'18/06/1983','After the Wind Blows',3);
INSERT INTO composition VALUES (17,NULL,'A Simple Piece',2);
INSERT INTO composition VALUES (18,'12/01/1985','Long Rythms',1);
INSERT INTO composition VALUES (19,'12/02/1988','Eastern Wind',1);
INSERT INTO composition VALUES (20,NULL,'Slow Symphony Blowing',2);
INSERT INTO composition VALUES (21,'12/07/1990','A Last Song',6);


-- plays_in
/* SELECT 'INSERT INTO plays_in VALUES ' || '(' || player|| ',' || band_id || ')' || ';'
FROM plays_in */
INSERT INTO plays_in VALUES (1,1);
INSERT INTO plays_in VALUES (1,7);
INSERT INTO plays_in VALUES (3,1);
INSERT INTO plays_in VALUES (4,1);
INSERT INTO plays_in VALUES (4,7);
INSERT INTO plays_in VALUES (5,1);
INSERT INTO plays_in VALUES (6,1);
INSERT INTO plays_in VALUES (6,7);
INSERT INTO plays_in VALUES (7,1);
INSERT INTO plays_in VALUES (8,1);
INSERT INTO plays_in VALUES (8,7);
INSERT INTO plays_in VALUES (10,2);
INSERT INTO plays_in VALUES (12,2);
INSERT INTO plays_in VALUES (13,2);
INSERT INTO plays_in VALUES (14,2);
INSERT INTO plays_in VALUES (14,8);
INSERT INTO plays_in VALUES (15,2);
INSERT INTO plays_in VALUES (15,8);
INSERT INTO plays_in VALUES (17,2);
INSERT INTO plays_in VALUES (18,2);
INSERT INTO plays_in VALUES (19,3);
INSERT INTO plays_in VALUES (20,3);
INSERT INTO plays_in VALUES (21,4);
INSERT INTO plays_in VALUES (22,4);
INSERT INTO plays_in VALUES (23,4);
INSERT INTO plays_in VALUES (25,5);
INSERT INTO plays_in VALUES (26,6);
INSERT INTO plays_in VALUES (27,6);
INSERT INTO plays_in VALUES (28,7);
INSERT INTO plays_in VALUES (28,8);
INSERT INTO plays_in VALUES (29,7);

-- has_composed
/* SELECT 'INSERT INTO has_composed VALUES ' || '(' || cmpr_no|| ',' || cmpn_no || ')' || ';'
FROM has_composed */
INSERT INTO has_composed VALUES (1,1);
INSERT INTO has_composed VALUES (1,8);
INSERT INTO has_composed VALUES (2,11);
INSERT INTO has_composed VALUES (3,2);
INSERT INTO has_composed VALUES (3,13);
INSERT INTO has_composed VALUES (3,14);
INSERT INTO has_composed VALUES (3,18);
INSERT INTO has_composed VALUES (4,12);
INSERT INTO has_composed VALUES (4,20);
INSERT INTO has_composed VALUES (5,3);
INSERT INTO has_composed VALUES (5,13);
INSERT INTO has_composed VALUES (5,14);
INSERT INTO has_composed VALUES (6,15);
INSERT INTO has_composed VALUES (6,21);
INSERT INTO has_composed VALUES (7,4);
INSERT INTO has_composed VALUES (7,9);
INSERT INTO has_composed VALUES (8,16);
INSERT INTO has_composed VALUES (9,5);
INSERT INTO has_composed VALUES (9,10);
INSERT INTO has_composed VALUES (10,17);
INSERT INTO has_composed VALUES (11,6);
INSERT INTO has_composed VALUES (12,7);
INSERT INTO has_composed VALUES (12,19);

--- (4.Probar algunas restricciones declarativas NoOK (PoblarNoOK))
-- place
INSERT INTO place VALUES ('','Edinburgh','Scotland');


-- musician
INSERT INTO musician VALUES ('1','Fred Bloggs','2/01/1948',NULL,'100','200');


-- performer
INSERT INTO performer VALUES ('78',34,' ','jazz');


-- composer
INSERT INTO composer VALUES ('4','22','classical');

-- band
INSERT INTO band VALUES ('17','AASO','0','56','1/01/1930','1');


-- composition
INSERT INTO composition VALUES ('100','14/12/81','Valiant Knight',3);


-- plays_in
INSERT INTO plays_in VALUES ('10','10');

-- has_composed
INSERT INTO has_composed VALUES ('25','19');


--- (5.Probar las consultas correspondientes a este ciclo (Consultas))

-- ¿Cuales musicos son interpretes y compositores?
SELECT DISTINCT(m_name), COALESCE(died, 'Vivo', 'Muerto')
FROM musician JOIN performer ON (m_no = perf_is)
JOIN composer ON(m_no = comp_is)
ORDER BY m_name;

--¿Cuantos instrumentos diferentes usan cada una de las bandas?
SELECT band_name, COUNT(instrument)
FROM performer JOIN plays_in ON(perf_no = player)
JOIN band ON(band_id = band_no)
GROUP BY band_name, band_no
ORDER BY COUNT(instrument) DESC;

--Cantidad de canciones compuestas por cada compositor

SELECT m_name, COUNT(c_no)
FROM musician JOIN composer ON(m_no = comp_is)
JOIN has_composed ON(comp_no = cmpr_no)
JOIN composition ON(cmpn_no =c_no)
GROUP BY m_name;

--List the diferent instrument's played by the musicians and AVG number of musicians who play the instrument

SELECT instrument, COUNT(perf_is) AS musician
FROM performer 
GROUP BY instrument;


--- (6.Despoblar la base de datos (XPoblar))

--place
DELETE FROM place;

--musician
DELETE FROM musician;

--performer
DELETE FROM performer;

--composer
DELETE FROM composer;

--band 
DELETE FROM band;

--composition
DELETE FROM composition;

--plays_in
DELETE FROM plays_in;

--has_composed
DELETE FROM has_composed;



--- (7.Eliminar toda la información de la base de datos (XTablas))
--composition
DROP TABLE composition;

--plays_in
DROP TABLE plays_in;

--band 
DROP TABLE band;

--composer
DROP TABLE composer;

--performer
DROP TABLE performer;

--has_composed
DROP TABLE has_composed;

--musician
DROP TABLE musician;

--place
DROP TABLE place;


DROP TABLE concert;







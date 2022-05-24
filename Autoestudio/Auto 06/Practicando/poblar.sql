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
INSERT INTO band VALUES (1,'ROP',5,'classical','01/01/1930',11, 
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.rop.com </WebSite>  
    <Logo color = "Rojo" texto = "R O P" imagen = "rop.png"/>
    <Influencias> 
        <Influencia nombre = "Tony Smythe"/>
        <Influencia nombre = "Andy Jones"/> 
        <Influencia nombre = "John Smith"/> 
    </Influencias>     
    <Discografia>
        <Discos>
            <Disco nombre = "Back in black" año = "1998" ventas = "50000000"/>
            <Disco nombre = "Bat out of Hell" año = "1977" ventas = "50000000"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "1999" trabajo = "Back in black" nombre = "BRIT" resultado = "ganador"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (2,'AASO',6,'classical',NULL,10,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.aaso.com </WebSite>  
    <Logo color = "Azul" texto = "AASO Band" imagen = "aaso.png"/> 
    <Influencias> 
        <Influencia nombre = "James First"/>
        <Influencia nombre = "Andy Jones"/> 
        <Influencia nombre = "The J Bs"/> 
    </Influencias>    
    <Discografia>
        <Discos>
            <Disco nombre = "Zombie" año = "1985" ventas = "35890000"/>
            <Disco nombre = "The Dark Side Of The Moon" año = "1972" ventas = "45000000"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "1999" trabajo = "Back in black" nombre = "NME Award" resultado = "Nominado"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (3,'The J Bs',8,'jazz',NULL,12,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.Jbs.com </WebSite>  
    <Logo color = "Negro" texto = "funk y soul James Brown" imagen = "TheJBs.png"/> 
    <Influencias> 
        <Influencia nombre = "James First"/>
        <Influencia nombre = "Andy Jones"/> 
        <Influencia nombre = "The J Bs"/> 
    </Influencias>  
    <Discografia>
        <Discos>
            <Disco nombre = "Food For Thought" año = "1972" ventas = "46970000"/>
            <Disco nombre = "Doing It to Death" año = "1973" ventas = "45000000"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "1999" trabajo = "Food For Though" nombre = "Rock and Roll Hall of Fame" resultado = "Nominado"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (4,'BBSO',9,'classical',NULL,21,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.BBSO.com </WebSite>  
    <Logo color = "Amarillo" texto = "BBSO" imagen = "BBSO.png"/> 
    <Influencias> 
        <Influencia nombre = "Harry Forte"/>
        <Influencia nombre = "Andy Jones"/> 
        <Influencia nombre = "The J Bs"/> 
    </Influencias>    
    <Discografia>
        <Discos>
            <Disco nombre = "Colinde" año = "2019" ventas = "234346578"/>
            <Disco nombre = "Imnuri" año = "2020" ventas = "213412354"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "2002" trabajo = "Harul" nombre = "Rock" resultado = "Ganador"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (5,'The left Overs',2,'jazz',NULL,8,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.TheleftOvers.com </WebSite>  
    <Logo color = "Naranja" texto = "Overs" imagen = "TheleftOvers.png"/> 
    <Influencias> 
        <Influencia nombre = "Harry Forte"/>
        <Influencia nombre = "Oh well"/> 
        <Influencia nombre = "The J Bs"/> 
    </Influencias>   
    <Discografia>
        <Discos>
            <Disco nombre = "Lousy Imitations" año = "2021" ventas = "45000000"/>
            <Disco nombre = "Cigarettes and Alcohol" año = "1979" ventas = "57890000"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "2021" trabajo = "The Leftovers" nombre = "Rock" resultado = "Nominado"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (6,'Somebody Loves this',1,'jazz',NULL,6,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.SomebodyLovesthis.com </WebSite>  
    <Logo color = "Gris" texto = "Pop" imagen = "SomebodyLovesthis.png"/> 
    <Influencias> 
        <Influencia nombre = "Harry Forte"/>
        <Influencia nombre = "Swinging strings"/> 
        <Influencia nombre = "The J Bs"/> 
    </Influencias>      
    <Discografia>
        <Discos>
            <Disco nombre = "When Somebody Loves You" año = "2019" ventas = "3543657"/>
            <Disco nombre = "The Thrill Is Back" año = "2018" ventas = "23432540"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "2017" trabajo = "Life or Love" nombre = "Rock" resultado = "Nominado"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (7,'Oh well',4,'classical',NULL,3,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.Ohwell.com </WebSite>  
    <Logo color = "Magenta" texto = "Funk" imagen = "Ohwell.png"/> 
    <Influencias> 
        <Influencia nombre = "Harry Forte"/>
        <Influencia nombre = "Swinging strings"/> 
        <Influencia nombre = "Jeff Dawn"/> 
    </Influencias>    
    <Discografia>
        <Discos>
            <Disco nombre = "1st Album" año = "1989" ventas = "23400000"/>
            <Disco nombre = "Hit You" año = "1990" ventas = "12334355"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "1992" trabajo = "Hit You" nombre = "MTV" resultado = "Nominado"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (8,'Swinging strings',4,'classical',NULL,7,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.Swingingstrings.com </WebSite>  
    <Logo color = "Verde" texto = "Classical" imagen = "Swingingstrings.png"/>
    <Influencias> 
        <Influencia nombre = "Tony Smythe"/>
        <Influencia nombre = "Swinging strings"/> 
        <Influencia nombre = "Jeff Dawn"/> 
    </Influencias>      
    <Discografia>
        <Discos>
            <Disco nombre = "That Martian Jubilee" año = "2004" ventas = "53000000"/>
            <Disco nombre = "Go Daddy Go" año = "2008" ventas = "25657780"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "2010" trabajo = "Snobows" nombre = "EMMY" resultado = "Ganador"/>
    </PremiosYNominaciones>
</Detalle>'));

INSERT INTO band VALUES (9,'The Rest',9,'jazz',NULL,16,
XMLTYPE(
'<?xml version="1.0"?>
<Detalle>
    <WebSite> www.TheRest.com </WebSite>  
    <Logo color = "Dorado" texto = "Jazz" imagen = "TheRest.png"/> 
    <Influencias> 
        <Influencia nombre = "Tony Smythe"/>
        <Influencia nombre = "Andy Jones"/> 
    </Influencias>    
    <Discografia>
        <Discos>
            <Disco nombre = "Everyone All At Once" año = "2009" ventas = "52900304"/>
            <Disco nombre = "Apples" año = "2010" ventas = "67900000"/>
        </Discos>
    </Discografia>
    <PremiosYNominaciones> 
            <Premio año = "2011" trabajo = "Walk On Water" nombre = "NME Award" resultado = "Ganador"/>
    </PremiosYNominaciones>
</Detalle>'));


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

--
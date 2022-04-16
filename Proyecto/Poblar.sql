--- PoblarOk

-- plataformas
insert into plataformas (nombre, cFecha, terminos) values ('fedodr', '24/10/2020', 'Managed clear-thinking forecast');
insert into plataformas (nombre, cFecha, terminos) values ('jyxfna', '31/07/2021', 'Visionary global hardware');
insert into plataformas (nombre, cFecha, terminos) values ('avqunz', '09/04/2016', 'Cloned maximized success');
insert into plataformas (nombre, cFecha, terminos) values ('vaaiyg', '02/10/2021', 'Decentralized neutral firmware');
insert into plataformas (nombre, cFecha, terminos) values ('gvqmzs', '07/05/2016', 'Up-sized attitude-oriented infrastructure');
insert into plataformas (nombre, cFecha, terminos) values ('uorvgm', '25/05/2015', 'Ameliorated cohesive circuit');
insert into plataformas (nombre, cFecha, terminos) values ('dkgiyu', '02/07/2019', 'Implemented zero administration installation');
insert into plataformas (nombre, cFecha, terminos) values ('hycmwy', '29/06/2015', 'Virtual needs-based interface');
insert into plataformas (nombre, cFecha, terminos) values ('nqpkvk', '16/12/2015', 'Stand-alone intangible model');
insert into plataformas (nombre, cFecha, terminos) values ('szssuy', '02/04/2020', 'Universal dynamic throughput');

-- usuarios
insert into usuarios (userId, name, fCreacion) values (1, 'Jonas', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (2, 'Barbra', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (3, 'Max', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (4, 'Karalee', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (5, 'Tamar', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (6, 'Harriet', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (7, 'Leontyne', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (8, 'Derward', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (9, 'Linnea', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values (10, 'Vassili', '01/04/2022');

-- consultas
insert into consultas (consultId, fConsulta, Usuarios_userId) values (1, '20/03/2022', 1);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (2, '23/03/2022', 2);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (3, '30/03/2022', 3);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (4, '23/03/2022', 4);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (5, '20/03/2022', 5);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (6, '24/03/2022', 6);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (7, '23/03/2022', 7);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (8, '27/03/2022', 8);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (9, '22/03/2022', 9);
insert into consultas (consultId, fConsulta, Usuarios_userId) values (10, '20/03/2022', 10);

-- CONTENIDOS
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (1, '05/06/2014', '13/03/2018', 'The Castle of Fu Manchu', 'vulputate justo in blandit ultrices', 1);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (2, '03/07/2015', '14/04/2003', 'In the Shadow of', 'volutpat sapien arcu sed augue aliquam', 2);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (3, '07/03/2010', '07/03/2009', 'Dirt', 'sit amet eros suspendisse accumsan tortor quis turpis', 3);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (4, '02/11/2014', '09/03/2002', 'Toy Story 3', 'luctus et ultrices posuere cubilia curae mauris', 4);
insert into contenidos (cId, publishingDate, cFecha, title, sipnosis, Consultas_consultId) values (5, '16/01/2010', '29/12/1999', 'Company Man', 'rutrum ac lobortis vel dapibus at', 5);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (6, '23/07/2012', '05/09/2010', 'Pandora''s Box', 'ante nulla justo aliquam quis turpis', 6);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (7, '22/03/2008', '15/01/2014', 'Kummeli Alivuokralainen', 'ultrices erat tortor sollicitudin mi', 7);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (8, '03/05/2014', '02/01/2017', 'Spare Parts', 'maecenas pulvinar lobortis est phasellus', 8);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (9, '14/05/2018', '18/09/2018', 'Travels with My Aunt', 'ipsum dolor sit amet consectetuer adipiscing elit', 9);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (10, '16/04/2016', '11/02/1997', 'My Sassy Girl (Yeopgijeogin geunyeo)', 'orci nullam molestie nibh in lectus pellentesque at', 10);insert into contenidos (cId, publishingDate, cFecha, title, sipnosis, Consultas_consultId) values (1, '05/06/2014', '13/03/2018', 'The Castle of Fu Manchu', 'vulputate justo in blandit ultrices', 1);


-- RECOMENDACIONES
insert into recomendaciones (rId, title) values (1, 'vivamus vel');
insert into recomendaciones (rId, title) values (2, 'luctus');
insert into recomendaciones (rId, title) values (3, 'eget eleifend luctus');
insert into recomendaciones (rId, title) values (4, 'justo');
insert into recomendaciones (rId, title) values (5, 'justo maecenas');
insert into recomendaciones (rId, title) values (6, 'donec quis');
insert into recomendaciones (rId, title) values (7, 'sed magna');
insert into recomendaciones (rId, title) values (8, 'montes nascetur');
insert into recomendaciones (rId, title) values (9, 'venenatis');
insert into recomendaciones (rId, title) values (10, 'nam');

--- RECOMENDACIONESXUSUARIOS

insert into recomendacionesXusuarios (r_id, Usuarios_id) values (1, 1);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (2, 2);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (3, 3);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (4, 4);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (5, 5);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (6, 6);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (7, 7);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (8, 8);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (9, 9);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (10, 10);

-- CATEGORIAS
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (1, 'Fire Sprinkler System', 'Comedy|Drama|Romance', '28/12/1998', 'commodo vulputate', 'fedodr');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (2, 'Fire Sprinkler System', 'Horror|Mystery|Thriller', '21/05/2015', 'dapibus', 'jyxfna');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (3, 'Framing (Wood)', 'Drama', '13/12/2007', 'felis', 'avqunz');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (4, 'Drywall & Acoustical (MOB)', 'Crime|Drama', '26/04/2009', 'sem fusce', 'vaaiyg');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (5, 'Landscaping & Irrigation', 'Documentary|Drama|Thriller', '22/08/2004', 'vel nulla', 'gvqmzs');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (6, 'Elevator', 'Drama', '17/10/2002', 'sollicitudin', 'uorvgm');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (7, 'Electrical', 'Drama', '14/06/1997', 'duis', 'hycmwy');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (8, 'Retaining Wall and Brick Pavers', 'Adventure|Comedy|Crime|Romance', '21/09/2009', 'nulla', 'nqpkvk');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (9, 'Landscaping & Irrigation', 'Action|Comedy|Crime', '10/09/2014', 'sed tincidunt', 'szssuy');
insert into categorias (caId, nombre, clasificacion, año, descripcion, Plataformas_nombre) values (10, 'Termite Control', 'Thriller', '02/09/2000', 'at vulputate', 'dkgiyu');

-- CLASIFICACIONES

insert into categorias (Contenidos_cId, Categorias_caId ) values (1, 1);
insert into categorias (Contenidos_cId, Categorias_caId ) values (2, 2);
insert into categorias (Contenidos_cId, Categorias_caId ) values (3, 3);
insert into categorias (Contenidos_cId, Categorias_caId ) values (4, 4);
insert into categorias (Contenidos_cId, Categorias_caId ) values (5, 5);
insert into categorias (Contenidos_cId, Categorias_caId ) values (6, 6);
insert into categorias (Contenidos_cId, Categorias_caId ) values (7, 7);
insert into categorias (Contenidos_cId, Categorias_caId ) values (8, 8);
insert into categorias (Contenidos_cId, Categorias_caId ) values (9, 9);
insert into categorias (Contenidos_cId, Categorias_caId ) values (10, 10);

-- REGIONES
insert into regiones (nombre) values ('Europa');
insert into regiones (nombre) values ('Norte America');
insert into regiones (nombre) values ('Africa');
insert into regiones (nombre) values ('Sur America');
insert into regiones (nombre) values ('Asia');
insert into regiones (nombre) values ('Oceania');

--- CUENTAS
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (1, 'fogglebie0', '21/03/2022', 'vel pede', 'kscutcheon0@prweb.com', 1, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (2, 'jdelahaye1', '26/03/2022', 'lacus morbi', 'bvanyarkin1@flickr.com', 2, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (3, 'lyushankin2', '22/03/2022', 'nec nisi', 'rolander2@cbc.ca', 3, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (4, 'jacey3', '25/03/2022', 'sapien', 'mewebank3@imdb.com', 4, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (5, 'gpele4', '21/03/2022', 'est quam', 'lgatty4@google.fr', 5, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (6, 'dcarsberg5', '27/03/2022', 'amet', 'mprimmer5@opensource.org', 6, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (7, 'vroseveare6', '29/03/2022', 'lorem ipsum', 'chubbucke6@example.com', 7, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (8, 'agladden7', '31/03/2022', 'pharetra magna', 'agarner7@pbs.org', 8, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (9, 'mbosquet8', '26/03/2022', 'nisi venenatis', 'npetrashov8@salon.com', 9, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, email, Usuarios_userId, Regiones_nombre) values (10, 'hseiffert9', '26/03/2022', 'nisl', 'mcane9@bloglines.com', 10, 'Sur America');

-- CUENTAASOCIADA
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('tlarenson0@cam.ac.uk', 'rbranton0', 1, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('lwalsham1@vinaora.com', 'cclaringbold1', 2, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('mchidgey2@dagondesign.com', 'kkeppin2', 3, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('mdelue3@goo.ne.jp', 'rdarragh3', 4, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('arelf4@twitter.com', 'mblaza4', 5, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('aelnaugh5@wikispaces.com', 'sgyles5', 6, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('jpallent6@trellian.com', 'cworms6', 7, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('thinze7@samsung.com', 'aearthfield7', 8, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('dtimms8@xing.com', 'bswate8', 9, 'fedodr');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('icrombleholme9@livejournal.com', 'cingledow9', 10, 'fedodr');

-- FEEDBACKS
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (1, 'ligula', 9, 1, 1);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (2, 'in blandit', 2, 2, 2);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (3, 'sit', 10, 3, 3);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (4, 'fusce congue', 10, 4, 4);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (5, 'fringilla rhoncus', 1, 5, 5);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (6, 'lorem', 3, 6, 6);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (7, 'luctus ultricies', 8, 7, 7);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (8, 'consequat', 2, 8, 8);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (9, 'etiam', 2, 9, 9);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values (10, 'massa', 9, 10, 10);

-- FILTROS
insert into filtros (fId, duracion, Consultas_consultId) values (1, 194, 1);
insert into filtros (fId, duracion, Consultas_consultId) values (2, 224, 2);
insert into filtros (fId, duracion, Consultas_consultId) values (3, 266, 3);
insert into filtros (fId, duracion, Consultas_consultId) values (4, 161, 4);
insert into filtros (fId, duracion, Consultas_consultId) values (5, 150, 5);
insert into filtros (fId, duracion, Consultas_consultId) values (6, 172, 6);
insert into filtros (fId, duracion, Consultas_consultId) values (7, 146, 7);
insert into filtros (fId, duracion, Consultas_consultId) values (8, 222, 8);
insert into filtros (fId, duracion, Consultas_consultId) values (9, 154, 9);
insert into filtros (fId, duracion, Consultas_consultId) values (10, 297, 10);

-- IDIOMAS
insert into idiomas (idioma) values ('ES');
insert into idiomas (idioma) values ('JP');
insert into idiomas (idioma) values ('ID');
insert into idiomas (idioma) values ('CN');
insert into idiomas (idioma) values ('PE');
insert into idiomas (idioma) values ('AL');
insert into idiomas (idioma) values ('ID');

-- LOGINS

insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (1, 'aelliot0@nih.gov', 'gqw90q', 1, 1);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (2, 'yblowne1@umn.edu', 'xwy83s', 2, 2);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (3, 'lcawthorn2@ted.com', 'dzp75b', 3, 3);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (4, 'pcrookston3@yellowbook.com', 'roi22e', 4, 4);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (5, 'kheathwood4@php.net', 'juq88f', 5, 5);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (6, 'mmccathay5@admin.ch', 'fbu52u', 6, 6);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (7, 'kvinick6@xing.com', 'ble73t', 7, 7);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (8, 'efanton7@godaddy.com', 'mpo97x', 8, 8);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (9, 'dgarbett8@mapquest.com', 'vqx37m', 9, 9);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (10, 'gnickell9@netscape.com', 'bna61c', 10, 10);


-- CONTRATOS

insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (1, 10, 55, 'Tarjeta', 'Activo', 1);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (2, 4, 53, 'Tarjeta', 'Activo', 2);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (3, 1, 12, 'Tarjeta', 'Activo', 3);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (4, 5, 18, 'Tarjeta', 'Activo', 4);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (5, 11, 5, 'Tarjeta', 'Activo', 5);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (6, 7, 84, 'Tarjeta', 'Activo', 6);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (7, 3, 91, 'Tarjeta', 'Activo', 7);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (8, 3, 45, 'Tarjeta', 'Activo', 8);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (9, 5, 87, 'Tarjeta', 'Activo', 9);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values (10, 6, 96, 'Tarjeta', 'Activo', 10);

-- PREMIOS
insert into premios (filtros_Id, nombre, id ) values (1, 'curabitur at', 1);
insert into premios (filtros_Id, nombre, id ) values (2, 'parturient', 2);
insert into premios (filtros_Id, nombre, id ) values (3, 'nisl', 3);
insert into premios (filtros_Id, nombre, id ) values (4, 'eget eleifend', 4);
insert into premios (filtros_Id, nombre, id ) values (5, 'sapien non', 5);
insert into premios (filtros_Id, nombre, id ) values (6, 'a suscipit', 6);
insert into premios (filtros_Id, nombre, id ) values (7, 'suscipit ligula', 7);
insert into premios (filtros_Id, nombre, id ) values (8, 'sapien', 8);
insert into premios (filtros_Id, nombre, id ) values (9, 'rutrum', 9);
insert into premios (filtros_Id, nombre, id ) values (10, 'eu tincidunt', 10);


-- DIRECTORES
insert into directores (filtros_Id, nombre, id) values (1, 'Brunhilde', 1);
insert into directores (filtros_Id, nombre, id) values (2, 'Kinny', 2);
insert into directores (filtros_Id, nombre, id) values (3, 'Kessiah', 3);
insert into directores (filtros_Id, nombre, id) values (4, 'Mose', 4);
insert into directores (filtros_Id, nombre, id) values (5, 'Reeba', 5);
insert into directores (filtros_Id, nombre, id) values (6, 'Issy', 6);
insert into directores (filtros_Id, nombre, id) values (7, 'Aurea', 7);
insert into directores (filtros_Id, nombre, id) values (8, 'Odessa', 8);
insert into directores (filtros_Id, nombre, id) values (9, 'Karly', 9);
insert into directores (filtros_Id, nombre, id) values (10, 'Helen', 10);

-- ACTORES
insert into actores (filtros_Id, nombre, id) values (1, 'Cirillo', 1);
insert into actores (filtros_Id, nombre, id) values (2, 'Nobie', 2);
insert into actores (filtros_Id, nombre, id) values (3, 'Fabio', 3);
insert into actores (filtros_Id, nombre, id) values (4, 'Marlo', 4);
insert into actores (filtros_Id, nombre, id) values (5, 'Jakob', 5);
insert into actores (filtros_Id, nombre, id) values (6, 'Saunderson', 6);
insert into actores (filtros_Id, nombre, id) values (7, 'Angele', 7);
insert into actores (filtros_Id, nombre, id) values (8, 'Doe', 8);
insert into actores (filtros_Id, nombre, id) values (9, 'Romola', 9);
insert into actores (filtros_Id, nombre, id) values (10, 'Davita', 10);

-- FORMATOS
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (1, '7:8', 'odio', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (2, '4:2', 'vestibulum', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (3, '5:5', 'consequat morbi', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (4, '9:9', 'mi', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (5, '7:6', 'posuere cubilia', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (6, '5:1', 'rhoncus mauris', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (7, '7:3', 'volutpat eleifend', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (8, '9:8', 'faucibus orci', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (9, '6:8', 'amet', 'fedodr');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (10, '6:4', 'id nulla', 'fedodr');

-- FUENTES
insert into fuentes (fuenteId, nombre, url) values (1, 'scelerisque quam', 'www.ynlq.ggd');
insert into fuentes (fuenteId, nombre, url) values (2, 'dapibus duis', 'www.safk.knh');
insert into fuentes (fuenteId, nombre, url) values (3, 'ut', 'www.shia.opk');
insert into fuentes (fuenteId, nombre, url) values (4, 'urna', 'www.qbpj.bts');
insert into fuentes (fuenteId, nombre, url) values (5, 'dui', 'www.wgva.dkf');
insert into fuentes (fuenteId, nombre, url) values (6, 'eu orci', 'www.qgai.ntk');
insert into fuentes (fuenteId, nombre, url) values (7, 'vehicula', 'www.yrwf.vxc');
insert into fuentes (fuenteId, nombre, url) values (8, 'lacinia', 'www.ceeb.xqr');
insert into fuentes (fuenteId, nombre, url) values (9, 'imperdiet nullam', 'www.bemq.iph');
insert into fuentes (fuenteId, nombre, url) values (10, 'eros', 'www.qskv.mgi');

-- ANUNCIOS
insert into anuncios (anuId, title, url, Plataformas_nombre) values (1, 'Feednation', 'www.yabc.rll', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (2, 'DabZ', 'www.oori.xvu', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (3, 'Eidel', 'www.wojs.ihm', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (4, 'Photojam', 'www.zkyx.pqh', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (5, 'Zoovu', 'www.uqzq.qir', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (6, 'Leenti', 'www.xsoy.tfh', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (7, 'Kwimbee', 'www.baux.jmi', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (8, 'Oyoyo', 'www.azld.vic', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (9, 'Oyondu', 'www.mnzv.uup', 'avqunz');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (10, 'Skivee', 'www.tawo.uec', 'avqunz');

-- PUBLICIDADES
insert into publicidades (pId, texto) values (1, 'nulla');
insert into publicidades (pId, texto) values (2, 'venenatis lacinia');
insert into publicidades (pId, texto) values (3, 'mollis');
insert into publicidades (pId, texto) values (4, 'volutpat dui');
insert into publicidades (pId, texto) values (5, 'ut odio cras');
insert into publicidades (pId, texto) values (6, 'turpis nec euismod');
insert into publicidades (pId, texto) values (7, 'sem');
insert into publicidades (pId, texto) values (8, 'in faucibus');
insert into publicidades (pId, texto) values (9, 'at');
insert into publicidades (pId, texto) values (10, 'eu felis');

-- REGISTROS
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (1, '21/01/2022', 'sem', 1);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (2, '15/11/2021', 'habitasse platea', 2);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (3, '18/02/2022', 'integer', 3);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (4, '30/12/2021', 'consectetuer', 4);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (5, '26/11/2021', 'blandit', 5);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (6, '19/03/2022', 'vestibulum', 6);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (7, '10/08/2021', 'convallis morbi', 7);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (8, '24/01/2022', 'id', 8);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (9, '03/06/2021', 'dui proin', 9);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (10, '28/07/2021', 'eget', 10);

-- RECONOCIMIENTOS
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (1, '12/09/2018', 'nulla facilisi', 'ac consequat', 1);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (2, '15/12/2011', 'mattis', 'varius nulla', 2);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (3, '28/05/1999', 'felis sed', 'ac', 3);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (4, '23/02/2021', 'vehicula consequat', 'sed', 4);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (5, '20/05/2016', 'mauris', 'in libero', 5);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (6, '28/05/2004', 'ut volutpat', 'nisl', 6);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (7, '16/01/2017', 'vestibulum sed', 'sapien', 7);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (8, '30/04/2000', 'egestas metus', 'elementum in', 8);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (9, '03/11/2016', 'diam nam', 'vehicula', 9);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (10, '25/06/2001', 'lorem', 'nulla integer', 10);

-- PAISES
insert into paises (nombre, Regiones_nombre) values ('Indonesia', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Syria', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('France', 'Europa');
insert into paises (nombre, Regiones_nombre) values ('China', 'Sur America');
insert into paises (nombre, Regiones_nombre) values ('Cuba', 'Sur America');
insert into paises (nombre, Regiones_nombre) values ('China', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Thailand', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Russia', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Central African Republic', 'Africa');

-- VERSIONES
insert into versiones (Formatos_fId, Contenidos_cId) values (1, 1);
insert into versiones (Formatos_fId, Contenidos_cId) values (2, 2);
insert into versiones (Formatos_fId, Contenidos_cId) values (3, 3);
insert into versiones (Formatos_fId, Contenidos_cId) values (4, 4);
insert into versiones (Formatos_fId, Contenidos_cId) values (5, 5);
insert into versiones (Formatos_fId, Contenidos_cId) values (6, 6);
insert into versiones (Formatos_fId, Contenidos_cId) values (7, 7);
insert into versiones (Formatos_fId, Contenidos_cId) values (8, 8);
insert into versiones (Formatos_fId, Contenidos_cId) values (9, 9);
insert into versiones (Formatos_fId, Contenidos_cId) values (10, 10);

-- PELICULAS

insert into peliculas (duration, reparto, Contenidos_cId) values (316, 'volutpat convallis morbi odio odio', 1);
insert into peliculas (duration, reparto, Contenidos_cId) values (260, 'natoque penatibus et', 2);
insert into peliculas (duration, reparto, Contenidos_cId) values (263, 'nisl ut volutpat sapien arcu', 3);
insert into peliculas (duration, reparto, Contenidos_cId) values (223, 'id turpis integer aliquet', 4);
insert into peliculas (duration, reparto, Contenidos_cId) values (356, 'in hac habitasse platea dictumst', 5);
insert into peliculas (duration, reparto, Contenidos_cId) values (134, 'in faucibus orci luctus et', 6);
insert into peliculas (duration, reparto, Contenidos_cId) values (185, 'nunc rhoncus dui vel sem', 7);
insert into peliculas (duration, reparto, Contenidos_cId) values (321, 'sit amet diam in', 8);
insert into peliculas (duration, reparto, Contenidos_cId) values (277, 'vulputate ut ultrices vel augue', 9);
insert into peliculas (duration, reparto, Contenidos_cId) values (152, 'orci vehicula condimentum curabitur', 10);

-- SERIES

insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (390, 63, 19, 'duis', 1);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (9, 89, 44, 'mauris laoreet', 2);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (180, 107, 47, 'morbi sem', 3);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (900, 59, 11, 'nam dui', 4);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (121, 86, 22, 'lacinia aenean sit', 5);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (370, 64, 2, 'placerat ante', 6);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (777, 102, 45, 'integer aliquet', 7);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (436, 48, 36, 'felis ut at', 8);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (277, 61, 52, 'nulla', 9);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (894, 78, 35, 'donec vitae', 10);

---PoblarNoOk

--Usuarios
insert into usuarios (userId, name, fCreacion) values (1, 'Muire Malecky', '09/01/2022'); --Fecha de creacion anterior a la establecida
insert into usuarios (userId, name, fCreacion) values (2, 'Binnie Shout', '17/01/2022'); --Fecha de creacion anterior a la establecida
insert into usuarios (userId, name, fCreacion) values (3, 'Elysee Choke', null); --Fecha no puede ser null
insert into usuarios (userId, name, fCreacion) values (4, null, null); --Name y fecha no pueden ser null
insert into usuarios (userId, name, fCreacion) values (5, 'Kaiser Pires', null); --Fecha no puede ser null
insert into usuarios (userId, name, fCreacion) values (6, 'Ursulina Petch', '05/01/2022'); --Fecha de creacion anterior a la establecida
insert into usuarios (userId, name, fCreacion) values (7, 'Bliss Gisby', '10/01/2022'); --Fecha de creacion anterior a la establecida
insert into usuarios (userId, name, fCreacion) values (8, 'Krishna Callam', '16/03/2022'); --Fecha de creacion anterior a la establecida
insert into usuarios (userId, name, fCreacion) values (9, 'Lonni Portal', null); --Fecha no puede ser nul
insert into usuarios (userId, name, fCreacion) values (10, 'Lindie Quaife', null); --Fecha no puede ser nul


--Plataformas
insert into plataformas (nombre, cFecha, terminos) values ('Innotype', '28/01/1993', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper');
-- Fecha anterior a la permitida
insert into plataformas (nombre, cFecha, terminos) values ('Demivee', '07/09/1984', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum');
-- Fecha anterior a la permitida
insert into plataformas (nombre, cFecha, terminos) values ('Ntags', null, null);
-- Fecha y terminos no pueden ser null
insert into plataformas (nombre, cFecha, terminos) values ('Skiptube', null, 'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante');
-- Fecha no puede ser null
insert into plataformas (nombre, cFecha, terminos) values ('Rhynoodle', '30/01/1944', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum');
-- Fecha anterior a la permitida
insert into plataformas (nombre, cFecha, terminos) values ('Nlounge', '26/01/1990', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus');
-- Terminos supera la longitud permitida
insert into plataformas (nombre, cFecha, terminos) values ('Topicshots', '28/03/1976', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus');
-- Fecha anterior a la permitida
insert into plataformas (nombre, cFecha, terminos) values ('Thoughtsphere', '03/10/2005', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at');
-- Terminos supera la longitud permitida
insert into plataformas (nombre, cFecha, terminos) values ('Demivee', '03/04/2003', 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis non sodales sed tincidunt eu felis');
-- Terminos supera la longitud permitida
insert into plataformas (nombre, cFecha, terminos) values ('Wordware', null, 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie');
-- Fecha no puede ser null


--Consultas
insert into consultas (consultId, fconsulta, Usuarios_userId) values (1, '03/01/2022', 1); ---- Fecha anterior a la permitida
insert into consultas (consultId, fconsulta, Usuarios_userId) values (2, '13/01/2022', null); ---- Fecha anterior a la permitida y userId no puede ser null
insert into consultas (consultId, fconsulta, Usuarios_userId) values (3, '02/03/2022', 3); ---- Fecha anterior a la permitida
insert into consultas (consultId, fconsulta, Usuarios_userId) values (4, null, 4); ---- Fecha no puede ser null
insert into consultas (consultId, fconsulta, Usuarios_userId) values (5, '23/01/2022', 5); ---- Fecha anterior a la permitida
insert into consultas (consultId, fconsulta, Usuarios_userId) values (6, null, 6); ---- Fecha no puede ser null
insert into consultas (consultId, fconsulta, Usuarios_userId) values (7, '10/02/2022', null); ---- Fecha anterior a la permitida y userId no puede ser null
insert into consultas (consultId, fconsulta, Usuarios_userId) values (8, '01/02/2022', 8); ---- Fecha anterior a la permitida
insert into consultas (consultId, fconsulta, Usuarios_userId) values (9, '22/02/2022', 9); ---- Fecha anterior a la permitida
insert into consultas (consultId, fconsulta, Usuarios_userId) values (10, '13/03/2022', 10); ---- Fecha anterior a la permitida


--Contenidos
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (1, '09/05/2005', '15/07/2011', 'Carry on Screaming!', null, 10);
-- Sinopsis no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (2, '28/03/2018', '02/02/1962', 'One Hundred Mornings', null, 48);
-- Sinopsis no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (3, '08/04/1996', '11/06/2006', 'Object of Beauty, The', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 84);
-- Sinopsis excede el limite de caracteres
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (4, '28/03/2018', '23/08/1921', 'Trauma', null, 70);
-- Sinopsis no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (5, '08/01/2008', '31/10/1941', 'Green Mile, The', 'et tempus semper est quam pharetra magna ac consequat metus sapien', 26);
-- Identificador de consultas no encontrado
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (6, '25/07/1994', '28/02/2002', 'Tao of Steve, The', null, 30);
-- Sinopsis no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (7, '13/03/1996', '18/06/1930', 'Foxfire', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 67);
-- Identificador de consultas no encontrado
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (8, '20/12/2009', '30/03/1914', null, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 94);
-- Titulo no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (9, '15/01/1990', '10/08/1942', 'Mad Dogs & Englishmen', null, 9);
-- Sinopsis no puede ser null
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values (10, '22/03/1994', null, 'Street Fighter II: The Animated Movie (Sutorîto Faitâ II gekijô-ban)', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 92);
-- Fecha no puede ser null


--Recomendaciones
/*
Titulo no puede ser null 
*/
insert into recomendaciones (rId, title) values (1, null);
insert into recomendaciones (rId, title) values (2, 'JFK');
insert into recomendaciones (rId, title) values (3, null);
insert into recomendaciones (rId, title) values (4, null);
insert into recomendaciones (rId, title) values (5, null);
insert into recomendaciones (rId, title) values (6, null);
insert into recomendaciones (rId, title) values (7, 'Bohemian Eyes (Boheemi elää - Matti Pellonpää)');
insert into recomendaciones (rId, title) values (8, null);
insert into recomendaciones (rId, title) values (9, null);
insert into recomendaciones (rId, title) values (10, null);


--recomendacionesXusuarios
/*
Claves foraneas no encontradas
*/
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (53, 89);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (41, 95);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (86, 15);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (11, 39);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (61, 91);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (32, 63);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (27, 6);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (17, 1);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (2, 76);
insert into recomendacionesXusuarios (r_Id, Usuarios_Id) values (4, 92);


--Categorias
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (1, 'quam', 'justo', 1874, 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 'Drama|Mystery|Sci-Fi', 'Dabshots');
-- Nombre de plataforma invalido, año inferior al permitido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (2, 'lectus vestibulum', 'ut massa', 1982, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 'Comedy|Drama', 'Quimba');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (3, 'ligula', 'orci luctus', 1934, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 'Documentary', 'Tavu');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (4, 'risus', 'pede', 1918, 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus', 'Drama', 'Yombu');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (5, 'blandit mi', 'donec quis', 1820, 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', 'Documentary', 'Yabox');
-- Nombre de plataforma invalido, año inferior al permitido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (6, 'pede', 'lorem ipsum', 1962, 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim', 'Comedy|Crime', 'Realpoint');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (7, 'quis', 'elementum', 1972, 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', 'Horror', 'Livetube');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (8, 'in congue', 'tristique', 1801, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 'Musical', 'Gabspot');
-- Nombre de plataforma invalido, año inferior al permitido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (9, 'sodales sed', 'ipsum primis', 1988, 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', 'Drama', 'Dabjam');
-- Nombre de plataforma invalido y clasificacion fuera del dominio
insert into clasificaciones (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values (10, 'tincidunt', 'bibendum morbi', 1820, 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'Children|Comedy', 'Zoombeat');
-- Nombre de plataforma invalido, año inferior al permitido y clasificacion fuera del dominio



--Clasificaciones
/*
Claves foraneas no encontradas
*/
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (21, 23);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (44, 11);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (83, 32);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (88, 89);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (48, 98);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (79, 52);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (23, 62);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (16, 44);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (19, 34);
insert into clasificaciones (Contenidos_cId, Categorias_caId) values (21, 68);


--Regiones
/*
Regiones fuera del dominio
*/
insert into regiones (nombre) values ('duis');
insert into regiones (nombre) values ('neque');
insert into regiones (nombre) values ('et');
insert into regiones (nombre) values ('pharetra');
insert into regiones (nombre) values ('mauris');
insert into regiones (nombre) values ('nec');
insert into regiones (nombre) values ('proin');
insert into regiones (nombre) values ('massa');
insert into regiones (nombre) values ('at');
insert into regiones (nombre) values ('volutpat');


--Cuentas
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (1, 'xstork0', '10/04/2021', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', 'nisl duis', 'vestibulum', 72, 'sit amet');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (2, 'dmuddiman1', '27/04/2020', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'sit amet', 'porta', 90, 'rhoncus');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (3, 'rtwitching2', '25/03/2022', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', 'velit eu', 'in felis', 36, 'ultrices enim');
-- Email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (4, 'ehemms3', '26/07/2020', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh', 'non', 'sit', 75, 'convallis');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (5, 'gcottage4', '19/09/2020', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam', 'volutpat in', 'nisi at', 77, 'id ornare');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (6, 'estonestreet5', '16/12/2021', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', 'suspendisse', 'et', 75, 'platea dictumst');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (7, 'dserris6', '21/10/2021', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 'dui vel', 'luctus et', 20, 'at');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (8, 'snoel7', '16/01/2020', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'nunc purus', 'vel', 60, 'faucibus cursus');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (9, 'dtynnan8', '11/03/2020', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 'ante', 'tincidunt ante', 37, 'lectus');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio
insert into cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values (10, 'ochell9', '09/08/2021', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', 'ante', 'amet', 27, 'lorem');
-- Fecha anterior a la permitida, email definido incorrectamente, tipo fuera del dominio, id de usuarios y nombre de las regiones fuera del dominio


--CuentaAsociada
/*
Email con fomrato incorrecto, id de usuario no encontrado y nombre de la plataforma no encontrado
*/
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('eu', 'pelcoux0', 84, 'Aimbu');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ut', 'ainsworth1', 12, 'Realcube');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('leo', 'akayzer2', 92, 'Roomm');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('vehicula', 'ecliss3', 85, 'Janyx');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('magna', 'lbovis4', 91, 'Livefish');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ipsum', 'nhallowes5', 41, 'Jabbersphere');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('aenean', 'oclymer6', 31, 'InnoZ');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ultrices', 'kmacandreis7', 14, 'Tagopia');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('at', 'edimelow8', 90, 'Dablist');
insert into cuentas (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('imperdiet', 'akarpf9', 61, 'Skyble');


--Feedbacks
/*
Comentario excede el limite de caracteres, score fuera del rango establecido y id's de usuario y contenido no encontrado
*/
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (1, 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', 24.6, 48, 24);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (2, 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', 22.4, 19, 23);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (3, 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 10.6, 71, 31);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (4, 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 86.7, 56, 12);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (5, 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', 13.4, 18, 81);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (6, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum', 36.8, 21, 52);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (7, 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 84.3, 84, 96);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (8, 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 45.9, 22, 18);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (9, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 39.1, 15, 15);
insert into feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values (10, 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', 69.5, 99, 55);



--Filtros
/*
Duracion fuera del rango establecido y id de consultas no encontrado*/
insert into filtros (fId, duracion, Consultas_consultId) values (1, 6596, 100);
insert into filtros (fId, duracion, Consultas_consultId) values (2, 7539, 54);
insert into filtros (fId, duracion, Consultas_consultId) values (3, 8216, 34);
insert into filtros (fId, duracion, Consultas_consultId) values (4, 5388, 56);
insert into filtros (fId, duracion, Consultas_consultId) values (5, 6316, 12);
insert into filtros (fId, duracion, Consultas_consultId) values (6, 6760, 14);
insert into filtros (fId, duracion, Consultas_consultId) values (7, 1418, 74);
insert into filtros (fId, duracion, Consultas_consultId) values (8, 2676, 82);
insert into filtros (fId, duracion, Consultas_consultId) values (9, 3910, 85);
insert into filtros (fId, duracion, Consultas_consultId) values (10, 4487, 78);



--Idiomas
-- Sin restricciones establecidas


--Logins
/*
Email definido incorrectamente y id's de usuario y cuentas no encontrado*/
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (1, 'ut', '2uP4xi6', 21, 72);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (2, 'mi nulla', 'wT0GZMuRkRWd', 72, 70);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (3, 'suspendisse', 'fbyTrZepoq', 30, 92);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (4, 'nisl ut', '1ZzgcG', 94, 46);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (5, 'ipsum', '9NzDGtH6b', 2, 77);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (6, 'accumsan tortor', 'LMdxsSAa1', 2, 9);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (7, 'nec', 'I46n5m6', 19, 45);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (8, 'risus', 'EhP7Foe', 72, 3);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (9, 'laoreet ut', '8skY9Trn', 12, 4);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values (10, 'in', 'SzE7DwDf', 43, 41);


--CuentasXIdiomas
/*
Claves foraneas violadas
*/
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (93, 'duis');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (7, 'nisl');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (61, 'sem');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (22, 'varius');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (64, 'nibh');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (82, 'eu');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (18, 'vitae');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (61, 'sollicitudin');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (7, 'metus');
insert into cuentasXidiomas (Cuentas_Id, idiomas) values (52, 'odio');


--Contratos
/*
Duracion fuera del rango establecido, estado fuera de dominio, id de cuentas no encontrado
*/
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (1, 65, 41, 'quisque', 'enim sit', 65);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (2, 17, 31, 'amet consectetuer', 'pede ac', 74);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (3, 52, 50, 'neque vestibulum eget', 'accumsan tortor', 12);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (4, 68, 6, 'massa', 'aenean', 60);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (5, 95, 49, 'libero', 'dolor morbi', 24);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (6, 26, 63, 'nibh', 'sit', 51);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (7, 82, 94, 'ac lobortis vel', 'ligula', 75);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (8, 87, 74, 'diam', 'ut', 16);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (9, 69, 69, 'quam turpis', 'venenatis', 27);
insert into contratos (cId, duracion, precio, formaPago, estado, Cuentas_cuentaId) values (10, 69, 41, 'sed justo', 'pede justo', 1);



--Premios
/*
Id de filtros no encontrada
*/
insert into premios (filtros_Id, nombre, id) values (1, 'Lowcock', 13);
insert into premios (filtros_Id, nombre, id) values (2, 'Lax', 90);
insert into premios (filtros_Id, nombre, id) values (3, 'Barge', 78);
insert into premios (filtros_Id, nombre, id) values (4, 'Bohan', 5);
insert into premios (filtros_Id, nombre, id) values (5, 'Ludvigsen', 52);
insert into premios (filtros_Id, nombre, id) values (6, 'Bernardelli', 20);
insert into premios (filtros_Id, nombre, id) values (7, 'Hannon', 94);
insert into premios (filtros_Id, nombre, id) values (8, 'Giannazzi', 49);
insert into premios (filtros_Id, nombre, id) values (9, 'Stone Fewings', 33);
insert into premios (filtros_Id, nombre, id) values (10, 'Orwell', 4);



--Directores
/*
Id de filtros no encontrada
*/
insert into directores (filtros_Id, nombre, id) values (1, 'Jermain Scrimshaw', 1);
insert into directores (filtros_Id, nombre, id) values (2, 'Silvio Bogges', 3);
insert into directores (filtros_Id, nombre, id) values (3, 'Hadria Bramble', 51);
insert into directores (filtros_Id, nombre, id) values (4, 'Brew Roelofs', 65);
insert into directores (filtros_Id, nombre, id) values (5, 'Quint Hinkins', 51);
insert into directores (filtros_Id, nombre, id) values (6, 'Robbi Burdess', 38);
insert into directores (filtros_Id, nombre, id) values (7, 'Basil Pragnell', 6);
insert into directores (filtros_Id, nombre, id) values (8, 'Dane McGinty', 80);
insert into directores (filtros_Id, nombre, id) values (9, 'Franni O'' Finan', 95);
insert into directores (filtros_Id, nombre, id) values (10, 'Salome Sherrett', 18);



--Actores
/*
Id de filtros no encontrada
*/
insert into directores (filtros_Id, nombre, id) values (1, 'Tommie Kington', 71);
insert into directores (filtros_Id, nombre, id) values (2, 'Brana Futter', 76);
insert into directores (filtros_Id, nombre, id) values (3, 'Jammal Copestick', 18);
insert into directores (filtros_Id, nombre, id) values (4, 'Meaghan Kullmann', 69);
insert into directores (filtros_Id, nombre, id) values (5, 'Denyse Hearnah', 74);
insert into directores (filtros_Id, nombre, id) values (6, 'Lucilia Graeme', 69);
insert into directores (filtros_Id, nombre, id) values (7, 'Sly Bushill', 32);
insert into directores (filtros_Id, nombre, id) values (8, 'Timmie Linebarger', 77);
insert into directores (filtros_Id, nombre, id) values (9, 'Falito Jirasek', 80);
insert into directores (filtros_Id, nombre, id) values (10, 'Oneida Hofner', 74);

--Formatos
/*
Relacion de aspecto mal definido
*/
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (1, 'elit', 'lobortis', 'ante ipsum');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (2, 'leo', 'tortor', 'scelerisque');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (3, 'luctus', 'etiam', 'in');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (4, 'morbi', 'est', 'etiam faucibus');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (5, 'amet', 'rhoncus', 'arcu');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (6, 'bibendum', 'hac', 'vestibulum rutrum');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (7, 'consequat', 'tortor', 'convallis eget');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (8, 'eu', 'eget', 'nulla');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (9, 'at', 'ipsum', 'lectus');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values (10, 'dolor', 'vestibulum', 'primis');




--Fuentes
/*
Url incorrectamente definido
*/
insert into fuentes (fuenteId, nombre, url) values (1, 'magna at', 'primis');
insert into fuentes (fuenteId, nombre, url) values (2, 'eget rutrum', 'morbi');
insert into fuentes (fuenteId, nombre, url) values (3, 'est', 'congue');
insert into fuentes (fuenteId, nombre, url) values (4, 'sed vestibulum sit', 'posuere');
insert into fuentes (fuenteId, nombre, url) values (5, 'id pretium', 'porttitor');
insert into fuentes (fuenteId, nombre, url) values (6, 'ut nulla sed', 'ultrices');
insert into fuentes (fuenteId, nombre, url) values (7, 'molestie', 'metus');
insert into fuentes (fuenteId, nombre, url) values (8, 'at', 'justo');
insert into fuentes (fuenteId, nombre, url) values (9, 'turpis integer aliquet', 'aliquet');
insert into fuentes (fuenteId, nombre, url) values (10, 'amet lobortis sapien', 'dui');


--Anuncios
/*
Url mal definida, nombre de la plataforma no encontrado
*/
insert into anuncios (anuId, title, url, Plataformas_nombre) values (1, 'magnis', 'turpis', 'Dabfeed');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (2, 'justo in hac', 'odio', 'Oloo');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (3, 'condimentum', 'non', 'Oyonder');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (4, 'at turpis a', 'eleifend', 'Yakitri');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (5, 'at turpis a', 'vestibulum', 'JumpXS');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (6, 'mauris laoreet', 'viverra', 'Roombo');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (7, 'sed accumsan', 'duis', 'Izio');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (8, 'quam pharetra', 'est', 'Brainverse');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (9, 'arcu', 'est', 'Divavu');
insert into anuncios (anuId, title, url, Plataformas_nombre) values (10, 'lacinia aenean', 'porta', 'Devify');



--Publicidades
--No hya restricciones definidas


--Registros
/*
Consulta excede el limite de los caracteres y id de consultas no encontrada
*/
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (1, '1/3/2021', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', 57);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (2, '5/3/2020', 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', 25);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (3, '1/29/2022', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', 67);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (4, '10/2/2021', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 28);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (5, '10/15/2021', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 78);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (6, '3/23/2022', 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 40);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (7, '8/11/2021', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 56);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (8, '8/9/2020', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', 80);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (9, '9/20/2021', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 29);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values (10, '2/27/2021', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', 3);


--Reconocimientos
/*
Año anterior al permitido y id de contenidos no encontrado
*/
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (1, 1883, 'Axel', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', 62);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (2, 1806, 'Benyan', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', 75);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (3, 1802, 'Taphouse', 'vulputate elementum nullam varius nulla facilisi cras non velit nec', 44);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (4, 1823, 'Dreakin', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 29);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (5, 1813, 'Dudny', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', 46);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (6, 1872, 'Snawdon', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 47);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (7, 1867, 'Peers', 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 36);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (8, 1881, 'Vasser', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', 69);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (9, 1820, 'Gwatkin', 'dui vel sem sed sagittis nam congue risus semper porta', 15);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values (10, 1877, 'McArthur', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 2);


--Paises
-- Sin restricciones definidas


--Versiones
/*
Claves foraneas no encontradas
*/
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (70, 39);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (15, 94);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (63, 56);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (56, 71);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (43, 32);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (15, 58);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (55, 23);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (35, 55);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (86, 22);
insert into reconocimientos (Formatos_fId, Contenidos_cId) values (7, 85);


--Peliculas
/*
Duracion fuera del rango permitido y id de contenido no encontrado
*/
insert into peliculas (duration, reparto, Contenidos_cId) values (1643, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 43);
insert into peliculas (duration, reparto, Contenidos_cId) values (944, 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', 29);
insert into peliculas (duration, reparto, Contenidos_cId) values (1995, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 81);
insert into peliculas (duration, reparto, Contenidos_cId) values (1564, 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 88);
insert into peliculas (duration, reparto, Contenidos_cId) values (1470, 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', 42);
insert into peliculas (duration, reparto, Contenidos_cId) values (1420, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 96);
insert into peliculas (duration, reparto, Contenidos_cId) values (1821, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', 22);
insert into peliculas (duration, reparto, Contenidos_cId) values (1818, 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', 94);
insert into peliculas (duration, reparto, Contenidos_cId) values (900, 'pede libero quis orci nullam molestie nibh in lectus pellentesque', 69);
insert into peliculas (duration, reparto, Contenidos_cId) values (1384, 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', 95);



--Series
/*
Numero de episodios y de temporadas fuera de rango y id de contenidos no encontrada
*/
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (18407, 39, 72, 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 6);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (27412, 43, 96, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 27);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (19172, 79, 89, 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', 50);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (29405, 89, 72, 'quis libero nullam sit amet turpis elementum ligula vehicula consequat', 29);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (27749, 85, 99, 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', 41);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (26505, 100, 89, 'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 20);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (19647, 21, 81, 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', 22);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (27982, 14, 65, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 25);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (19352, 52, 92, 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 79);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (29964, 68, 90, 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', 62);

--- DisparadoresOK

-- PLATAFORMAS
insert into plataformas (nombre, cFecha, terminos) values ('Netflix', '24/10/2020', 'Managed clear-thinking forecast');
insert into plataformas (nombre, cFecha, terminos) values ('Amazon Prime', '31/07/2021', 'Visionary global hardware');
insert into plataformas (nombre, cFecha, terminos) values ('Hulu', '09/04/2016', 'Cloned maximized success');
insert into plataformas (nombre, cFecha, terminos) values ('Youtube', '02/10/2021', 'Decentralized neutral firmware');
insert into plataformas (nombre, cFecha, terminos) values ('HBO MAX', '07/05/2016', 'Up-sized attitude-oriented infrastructure');
insert into plataformas (nombre, cFecha, terminos) values ('DIRECT TV', '25/05/2015', 'Ameliorated cohesive circuit');
insert into plataformas (nombre, cFecha, terminos) values ('ShowTime', '02/07/2019', 'Implemented zero administration installation');
insert into plataformas (nombre, cFecha, terminos) values ('Fubo', '29/06/2015', 'Virtual needs-based interface');
insert into plataformas (nombre, cFecha, terminos) values ('Paramount +', '16/12/2015', 'Stand-alone intangible model');
insert into plataformas (nombre, cFecha, terminos) values ('Apple +', '02/04/2020', 'Universal dynamic throughput');

-- usuarios
insert into usuarios (userId, name, fCreacion) values ('', 'Carny', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Devondra', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Nikolaus', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Ahmad', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Wini', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Bondie', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Tremayne', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Tamqrah', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Shaylah', '01/04/2022');
insert into usuarios (userId, name, fCreacion) values ('', 'Dinnie', '01/04/2022');

-- CONSULTAS
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '30/03/2022', 100);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '24/03/2022', 101);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '31/03/2022', 102);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '21/03/2022', 103);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '20/03/2022', 104);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '22/03/2022', 105);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '21/03/2022', 106);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '23/03/2022', 107);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '25/03/2022', 108);
insert into consultas (consultId, fConsulta, Usuarios_userId) values ('', '25/03/2022', 109);

-- CONTENIDOS
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '19/09/2009', '16/01/2011', 'The Power and the Glory', 'mi sit amet lobortis sapien', 1);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '11/09/2018', '12/04/2013', 'Swordfish', 'ante ipsum primis in faucibus orci luctus et', 2);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '15/08/2021', '25/06/2006', 'Searching for Sugar Man', 'enim sit amet nunc viverra dapibus nulla suscipit', 3);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '30/10/2009', '18/01/2014', 'Cage aux Folles II, La', 'pellentesque at nulla suspendisse potenti cras in purus', 4);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '27/04/2015', '08/04/2011', 'Henry: Portrait of a Serial Killer', 'curae duis faucibus accumsan odio curabitur convallis', 5);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '26/07/2014', '12/07/2014', 'Cialo', 'fusce lacus purus aliquet at', 6);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '05/05/2017', '03/11/2003', 'Beastie Boys: Sabotage', 'nulla ac enim in tempor turpis', 7);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '25/03/2009', '19/12/2001', 'Interior. Leather Bar.', 'pede libero quis orci nullam molestie', 8);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '27/03/2018', '07/04/2010', 'Scene at the Sea, A (Ano natsu, ichiban shizukana umi)', 'neque aenean auctor gravida sem praesent id', 9);
insert into contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) values ('', '28/07/2015', '16/03/1998', 'The Great Northfield Minnesota Raid', 'quam fringilla rhoncus mauris enim leo', 10);

-- RECOMENDACIONES
insert into recomendaciones (rId, title) values ('', 'vel ipsum praesent');
insert into recomendaciones (rId, title) values ('', 'posuere nonummy integer');
insert into recomendaciones (rId, title) values ('', 'etiam justo etiam');
insert into recomendaciones (rId, title) values ('', 'porta');
insert into recomendaciones (rId, title) values ('', 'donec semper sapien');
insert into recomendaciones (rId, title) values ('', 'potenti in eleifend');
insert into recomendaciones (rId, title) values ('', 'in magna bibendum');
insert into recomendaciones (rId, title) values ('', 'consequat lectus in');
insert into recomendaciones (rId, title) values ('', 'molestie nibh');
insert into recomendaciones (rId, title) values ('', 'dolor morbi');

--- RECOMENDACIONESXUSUARIOS
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (1, 100);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (2, 101);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (3, 102);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (4, 103);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (5, 104);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (6, 105);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (7, 106);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (8, 107);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (9, 108);
insert into recomendacionesXusuarios (r_id, Usuarios_id) values (10, 109);

-- CATEGORIAS
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Comedy|Horror', 'PG-13', '24/08/1996', 'justo', 'Drama', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Thriller', 'PG-13', '28/12/2021', 'enim in', 'Drama|Romance', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Thriller', 'PG-13', '02/08/2011', 'montes nascetur', 'Comedy|Drama|Romance', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Comedy', 'PG-13', '19/04/2009', 'viverra', 'Adventure|Children|Comedy', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Comedy|Drama', 'PG-13', '22/08/2020', 'cubilia curae', 'Action|Sci-Fi|Thriller', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Action|Adventure|Sci-Fi', 'PG-13', '14/12/2019', 'quis justo', 'Drama|Mystery|Thriller', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Drama', 'PG-13', '05/04/2001', 'tortor', 'Comedy', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Drama', 'PG-13', '09/06/1998', 'in', 'Children|Comedy', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Drama', 'PG-13', '16/11/2016', 'porta volutpat', 'Drama|Mystery|Thriller', 'Netflix');
insert into categorias (caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', 'Crime|Drama|Thriller', 'PG-13', '20/06/2014', 'pellentesque', 'Comedy|Drama|Romance', 'Netflix');

-- CLASIFICACIONES
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (1, 100);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (2, 101);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (3, 102);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (4, 103);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (5, 104);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (6, 105);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (7, 106);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (8, 107);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (9, 108);
insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (10, 109);

-- REGIONES

insert into regiones (nombre) values ('Europa');
insert into regiones (nombre) values ('Norte America');
insert into regiones (nombre) values ('Africa');
insert into regiones (nombre) values ('Sur America');
insert into regiones (nombre) values ('Asia');
insert into regiones (nombre) values ('Oceania');

--- CUENTAS
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'scrosher0', '30/03/2022', 'nulla eget', 'No premium', 'hbrokenshaw0@biglobe.ne.jp', 100, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'ccowlard1', '22/03/2022', 'habitasse platea', 'No premium', 'vqualtrough1@uol.com.br', 101, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'abiasioli2', '26/03/2022', 'semper porta', 'No premium', 'lortsmann2@slashdot.org', 102, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'psproson3', '27/03/2022', 'posuere metus', 'No premium', 'reaglesham3@acquirethisname.com', 103, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'msummerly4', '26/03/2022', 'molestie nibh', 'No premium', 'cbounds4@who.int', 104, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'lterzza5', '25/03/2022', 'sem duis', 'No premium', 'malekseicik5@forbes.com', 105, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'bbrine6', '30/03/2022', 'elementum eu', 'No premium', 'priveles6@irs.gov', 106, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'gtarver7', '30/03/2022', 'donec vitae', 'No premium', 'ccheers7@usgs.gov', 107, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'ebreslauer8', '28/03/2022', 'massa', 'No premium', 'bridulfo8@addthis.com', 108, 'Sur America');
insert into cuentas (cuentaId , name, fCreacion, text, tipo, email, Usuarios_userId, Regiones_nombre) values ('', 'mbiasioni9', '27/03/2022', 'nulla', 'No premium', 'ggrendon9@disqus.com', 109, 'Sur America');

-- CUENTAASOCIADA
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('vtoppes0@blogger.com', 'tleiden0', 100, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('mbarme1@howstuffworks.com', 'tscranedge1', 101, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('kgilhoolie2@wp.com', 'ddunkley2', 102, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('dbein3@google.com', 'pwebley3', 103, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('chuntley4@flavors.me', 'mbracher4', 104, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('fmineghelli5@arstechnica.com', 'mmussettini5', 105, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('nsiddons6@multiply.com', 'ngrahame6', 106, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ahanretty7@hibu.com', 'lbutters7', 107, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ccarsey8@exblog.jp', 'iclears8', 108, 'Netflix');
insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values ('ioxherd9@hibu.com', 'nvaar9', 109, 'Netflix');

-- FEEDBACKS
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'risus semper', 3, 100, 1);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'amet nulla', 6, 101, 2);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'feugiat et', 7, 102, 3);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'nulla', 3, 103, 4);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'sem', 4, 104, 5);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'augue', 8, 105, 6);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'mattis pulvinar', 3, 106, 7);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'in', 9, 107, 8);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'et', 2, 108, 9);
insert into feedbacks (fId, comentario, score, Usuarios_userId , Contenidos_Id) values ('', 'mus', 9, 109, 10);

-- FILTROS
insert into filtros (fId, duracion, Consultas_consultId) values ('', 271, 1);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 223, 2);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 159, 3);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 291, 4);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 160, 5);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 150, 6);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 263, 7);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 174, 8);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 144, 9);
insert into filtros (fId, duracion, Consultas_consultId) values ('', 162, 10);

-- IDIOMAS

insert into idiomas (idioma) values ('ES');
insert into idiomas (idioma) values ('JP');
insert into idiomas (idioma) values ('ID');
insert into idiomas (idioma) values ('CN');
insert into idiomas (idioma) values ('PE');
insert into idiomas (idioma) values ('AL');
insert into idiomas (idioma) values ('AR');

-- LOGINS
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'mreggler0@51.la', 'kyy35o', 100, 10);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'elabastida1@state.tx.us', 'eld06a', 101, 11);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'inisard2@t-online.de', 'tpq55g', 102, 12);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'cbramhill3@mysql.com', 'dgt27q', 103, 13);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'chaughian4@phoca.cz', 'vqo24t', 104, 14);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'arichie5@fda.gov', 'wye19z', 105, 15);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'santen6@networksolutions.com', 'cyi72u', 106, 16);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'gwaddilove7@prweb.com', 'ika64t', 107, 17);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'bdegliabbati8@icio.us', 'yjj86r', 108, 18);
insert into logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', 'rknewstub9@xing.com', 'igw22e', 109, 19);

--- CUENTASXIDIOMAS

insert into cuentasXidiomas (cuentas_id, idiomas) values (10, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (11, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (12, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (13, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (14, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (15, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (16, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (17, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (18, 'ES');
insert into cuentasXidiomas (cuentas_id, idiomas) values (19, 'ES');

-- CONTRATOS
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 3, 2, 'Tarjeta', 'Activo', 10);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 1, 71, 'Tarjeta', 'Activo', 11);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 10, 71, 'Tarjeta', 'Activo', 12);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 10, 27, 'Tarjeta', 'Activo', 13);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 12, 36, 'Tarjeta', 'Activo', 14);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 10, 11, 'Tarjeta', 'Activo', 15);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 10, 18, 'Tarjeta', 'Activo', 16);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 11, 36, 'Tarjeta', 'Activo', 17);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 7, 87, 'Tarjeta', 'Activo', 18);
insert into contratos  (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', 12, 92, 'Tarjeta', 'Activo', 19);

-- PREMIOS
insert into premios (filtros_Id, nombre, id ) values (1, 'ac nulla', '');
insert into premios (filtros_Id, nombre, id ) values (2, 'mauris', '');
insert into premios (filtros_Id, nombre, id ) values (3, 'habitasse', '');
insert into premios (filtros_Id, nombre, id ) values (4, 'sapien a', '');
insert into premios (filtros_Id, nombre, id ) values (5, 'in', '');
insert into premios (filtros_Id, nombre, id ) values (6, 'sed nisl', '');
insert into premios (filtros_Id, nombre, id ) values (7, 'imperdiet sapien', '');
insert into premios (filtros_Id, nombre, id ) values (8, 'quis', '');
insert into premios (filtros_Id, nombre, id ) values (9, 'in', '');
insert into premios (filtros_Id, nombre, id ) values (10, 'ultrices', '');

-- DIRECTORES
insert into directores (filtros_Id, nombre, id) values (1, 'Arliene', '');
insert into directores (filtros_Id, nombre, id) values (2, 'Opaline', '');
insert into directores (filtros_Id, nombre, id) values (3, 'Dory', '');
insert into directores (filtros_Id, nombre, id) values (4, 'Ingeberg', '');
insert into directores (filtros_Id, nombre, id) values (5, 'Yetta', '');
insert into directores (filtros_Id, nombre, id) values (6, 'Oliver', '');
insert into directores (filtros_Id, nombre, id) values (7, 'Gardy', '');
insert into directores (filtros_Id, nombre, id) values (8, 'Aloisia', '');
insert into directores (filtros_Id, nombre, id) values (9, 'Charmion', '');
insert into directores (filtros_Id, nombre, id) values (10, 'Arlan', '');

-- ACTORES
insert into actores (filtros_Id, nombre, id) values (1, 'Obie', '');
insert into actores (filtros_Id, nombre, id) values (2, 'Rusty', '');
insert into actores (filtros_Id, nombre, id) values (3, 'Violante', '');
insert into actores (filtros_Id, nombre, id) values (4, 'Prudi', '');
insert into actores (filtros_Id, nombre, id) values (5, 'Vaughn', '');
insert into actores (filtros_Id, nombre, id) values (6, 'Zedekiah', '');
insert into actores (filtros_Id, nombre, id) values (7, 'Sarah', '');
insert into actores (filtros_Id, nombre, id) values (8, 'Candie', '');
insert into actores (filtros_Id, nombre, id) values (9, 'Otis', '');
insert into actores (filtros_Id, nombre, id) values (10, 'Leslie', '');

-- FORMATOS
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '4:9', 'sed', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '3:9', 'sed tristique', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '8:0', 'tortor duis', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '1:4', 'mi integer', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '7:7', 'ut', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '0:3', 'libero convallis', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '9:7', 'sapien urna', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '2:9', 'quisque', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '5:0', 'orci', 'Netflix');
insert into formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', '8:5', 'sagittis sapien', 'Netflix');

-- FUENTES
insert into fuentes (fuenteId, nombre, url) values ('', 'quam', 'www.geos.dym');
insert into fuentes (fuenteId, nombre, url) values ('', 'neque', 'www.pbzt.gxb');
insert into fuentes (fuenteId, nombre, url) values ('', 'molestie', 'www.trou.muw');
insert into fuentes (fuenteId, nombre, url) values ('', 'in', 'www.qnhv.leg');
insert into fuentes (fuenteId, nombre, url) values ('', 'massa volutpat', 'www.bojb.fmx');
insert into fuentes (fuenteId, nombre, url) values ('', 'penatibus', 'www.twht.qza');
insert into fuentes (fuenteId, nombre, url) values ('', 'cubilia curae', 'www.envm.jdp');
insert into fuentes (fuenteId, nombre, url) values ('', 'eget rutrum', 'www.exvo.dvx');
insert into fuentes (fuenteId, nombre, url) values ('', 'mi integer', 'www.yoyh.qbp');
insert into fuentes (fuenteId, nombre, url) values ('', 'luctus', 'www.fauu.dce');

-- ANUNCIOS
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Centimia', 'www.nufi.uxc', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Yotz', 'www.vjqt.kew', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Skajo', 'www.ykxv.jic', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Viva', 'www.gsfs.adl', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Twinte', 'www.njxt.kny', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Tavu', 'www.mcgd.sdj', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Oozz', 'www.cnou.gqs', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Fivechat', 'www.jlmz.rss', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Centizu', 'www.hapg.wav', 'Netflix');
insert into anuncios (anuId, title, url, Plataformas_nombre) values ('', 'Zooveo', 'www.dsvm.cfe', 'Netflix');

-- PUBLICIDADES
insert into publicidades (pId, texto) values ('', 'dolor sit');
insert into publicidades (pId, texto) values ('', 'nibh fusce');
insert into publicidades (pId, texto) values ('', 'nec euismod');
insert into publicidades (pId, texto) values ('', 'lectus pellentesque');
insert into publicidades (pId, texto) values ('', 'morbi a ipsum');
insert into publicidades (pId, texto) values ('', 'tellus nulla');
insert into publicidades (pId, texto) values ('', 'massa donec');
insert into publicidades (pId, texto) values ('', 'morbi');
insert into publicidades (pId, texto) values ('', 'est donec odio');
insert into publicidades (pId, texto) values ('', 'in est risus');

-- REGISTROS
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '24/03/2022', 'purus eu', 1);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '21/03/2022', 'rutrum nulla', 2);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '29/03/2022', 'vestibulum ante', 3);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '27/03/2022', 'penatibus et', 4);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '30/03/2022', 'orci vehicula', 5);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '31/03/2022', 'aenean lectus', 6);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '27/03/2022', 'id nisl', 7);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '28/03/2022', 'justo maecenas', 8);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '31/03/2022', 'blandit lacinia', 9);
insert into registros (rId, fRegistro, consulta, Consultas_consultId) values ('', '25/03/2022', 'auctor sed', 10);

-- RECONOCIMIENTOS
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '29/10/2004', 'lacus purus', 'vitae nisi', 1);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '31/10/2002', 'vulputate nonummy', 'enim in', 2);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '10/06/2008', 'pellentesque quisque', 'orci luctus', 3);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '24/11/2011', 'justo lacinia', 'mauris', 4);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '15/09/2020', 'sociis natoque', 'tellus', 5);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '05/05/2016', 'ac enim', 'libero', 6);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '31/10/2021', 'venenatis', 'rutrum', 7);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '06/09/2019', 'nulla', 'ipsum', 8);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '16/06/2010', 'aliquet', 'consequat', 9);
insert into reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', '16/07/2015', 'nisi', 'diam in', 10);

-- PAISES
insert into paises (nombre, Regiones_nombre) values ('Indonesia', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Syria', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('France', 'Europa');
insert into paises (nombre, Regiones_nombre) values ('China', 'Sur America');
insert into paises (nombre, Regiones_nombre) values ('Cuba', 'Sur America');
insert into paises (nombre, Regiones_nombre) values ('Thailand', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Russia', 'Asia');
insert into paises (nombre, Regiones_nombre) values ('Central African Republic', 'Africa');


-- VERSIONES
insert into versiones (Formatos_fId, Contenidos_cId) values (10000, 1);
insert into versiones (Formatos_fId, Contenidos_cId) values (10001, 2);
insert into versiones (Formatos_fId, Contenidos_cId) values (10002, 3);
insert into versiones (Formatos_fId, Contenidos_cId) values (10003, 4);
insert into versiones (Formatos_fId, Contenidos_cId) values (10004, 5);
insert into versiones (Formatos_fId, Contenidos_cId) values (10005, 6);
insert into versiones (Formatos_fId, Contenidos_cId) values (10006, 7);
insert into versiones (Formatos_fId, Contenidos_cId) values (10007, 8);
insert into versiones (Formatos_fId, Contenidos_cId) values (10008, 9);
insert into versiones (Formatos_fId, Contenidos_cId) values (10009, 10);

-- PELICULAS
insert into peliculas (duration, reparto, Contenidos_cId) values (361, 'nulla dapibus dolor vel', 1);
insert into peliculas (duration, reparto, Contenidos_cId) values (345, 'nibh in lectus pellentesque at', 2);
insert into peliculas (duration, reparto, Contenidos_cId) values (355, 'ipsum primis in faucibus orci', 3);
insert into peliculas (duration, reparto, Contenidos_cId) values (332, 'in est risus auctor sed', 4);
insert into peliculas (duration, reparto, Contenidos_cId) values (307, 'ut nulla sed accumsan', 5);
insert into peliculas (duration, reparto, Contenidos_cId) values (371, 'sed lacus morbi sem', 6);
insert into peliculas (duration, reparto, Contenidos_cId) values (348, 'velit donec diam', 7);
insert into peliculas (duration, reparto, Contenidos_cId) values (293, 'ipsum primis in', 8);
insert into peliculas (duration, reparto, Contenidos_cId) values (237, 'morbi vel lectus', 9);
insert into peliculas (duration, reparto, Contenidos_cId) values (294, 'montes nascetur ridiculus mus etiam', 10);

-- SERIES
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (321, 51, 6, 'etiam', 1);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (304, 112, 33, 'in', 2);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (662, 50, 40, 'morbi a ipsum', 3);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (297, 39, 6, 'imperdiet nullam', 4);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (252, 115, 22, 'tincidunt', 5);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (513, 44, 15, 'volutpat', 6);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (162, 50, 1, 'mauris', 7);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (810, 38, 53, 'erat', 8);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (316, 22, 7, 'neque vestibulum eget', 9);
insert into series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (237, 16, 6, 'sollicitudin mi', 10);



--- DisparadoresNOOK

UPDATE cuentas SET email = 'andres.onate@mail.co'; --- No es posible actualizar el correo electronico a la cuenta
DELETE FROM contratos; -- 'No se puede eliminar el contrato'
UPDATE registros SET consulta = '¿Qué ver en..?'; --- 'No es posible actualizar la consulta



--XPoblar

-- CONTRATOS
DELETE FROM SERIES;
DELETE FROM PELICULAS;
DELETE FROM VERSIONES;
DELETE FROM PAISES;
DELETE FROM RECONOCIMIENTOS;
DELETE FROM REGISTROS;
DELETE FROM PUBLICIDADES;
DELETE FROM ANUNCIOS;
DELETE FROM FUENTES;
DELETE FROM FORMATOS;
DELETE FROM ACTORES;
DELETE FROM DIRECTORES;
DELETE FROM PREMIOS;
DELETE FROM CONTRATOS;
DELETE FROM CUENTASXIDIOMAS;
DELETE FROM LOGINS;
DELETE FROM IDIOMAS;
DELETE FROM FILTROS;
DELETE FROM FEEDBACKS;
DELETE FROM CUENTAASOCIADA;
DELETE FROM CUENTAS;
DELETE FROM REGIONES;
DELETE FROM CLASIFICACIONES;
DELETE FROM CATEGORIAS;
DELETE FROM RECOMENDACIONESXUSUARIOS;
DELETE FROM RECOMENDACIONES;
DELETE FROM CONTENIDOS;
DELETE FROM CONSULTAS;
DELETE FROM USUARIOS;
DELETE FROM PLATAFORMAS;

--Clasificaciones
--Regiones
--Cuentas
--CuentaAsociada
--Feedbacks
--Filtros
--Idiomas
--Logins
--CuentasXIdiomas
--Contratos
--Premios
--Directores
--Actores
--Formatos
--Fuentes
--Anuncios
--Publicidades
--Registros
--Reconocimientos
--Paises
--Versiones
--Peliculas
--Series
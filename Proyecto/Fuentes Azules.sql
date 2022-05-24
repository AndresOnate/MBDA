-----Restriciones declarativas


----Claves Primarias 

---usuarios
ALTER TABLE usuarios ADD CONSTRAINT PK_USUARIOS PRIMARY KEY(userId);

 
---recomendaciones
ALTER TABLE recomendaciones ADD CONSTRAINT PK_RECOMENDACIONES PRIMARY KEY(rId);

 
---logins
ALTER TABLE logins ADD CONSTRAINT PK_LOGINS PRIMARY KEY(loginId);

 
---cuentas
ALTER TABLE cuentas ADD CONSTRAINT PK_CUENTAS PRIMARY KEY(cuentaId);

 
---contratos 
ALTER TABLE contratos ADD CONSTRAINT PK_CONTRATOS PRIMARY KEY(cId);
 
 
---regiones 
ALTER TABLE regiones ADD CONSTRAINT PK_REGIONES PRIMARY KEY(nombre);


---paises 
ALTER TABLE paises ADD CONSTRAINT PK_PAISES PRIMARY KEY(nombre);


---idiomas 
ALTER TABLE idiomas ADD CONSTRAINT PK_IDIOMAS PRIMARY KEY(idioma);
 
 
---feedbacks 
ALTER TABLE feedbacks ADD CONSTRAINT PK_FEEDBACK PRIMARY KEY(fId);
 
 
---consultas
ALTER TABLE consultas ADD CONSTRAINT PK_CONSULTAS PRIMARY KEY(consultId);
 
 
---filtros
ALTER TABLE filtros ADD CONSTRAINT PK_FILTROS PRIMARY KEY(fId);


---registros
ALTER TABLE registros ADD CONSTRAINT PK_REGISTROS PRIMARY KEY(rId);


---contenidos
ALTER TABLE contenidos ADD CONSTRAINT PK_CONTENIDOS PRIMARY KEY(cId);


---plataformas
ALTER TABLE plataformas ADD CONSTRAINT PK_PLATAFORMAS PRIMARY KEY(nombre);


---CuentaAsociada
ALTER TABLE CuentaAsociada ADD CONSTRAINT PK_CUENTAASOCIADA PRIMARY KEY(email, Plataformas_nombre);


---anuncios
ALTER TABLE anuncios ADD CONSTRAINT PK_ANUNCIOS PRIMARY KEY(anuId);


---reconocimientos
ALTER TABLE reconocimientos ADD CONSTRAINT PK_RECONOCIMIENTOS PRIMARY KEY(rId);


---peliculas
ALTER TABLE peliculas ADD CONSTRAINT PK_PELICULAS PRIMARY KEY(Contenidos_cId);


---series
ALTER TABLE series ADD CONSTRAINT PK_SERIES PRIMARY KEY(Contenidos_cId);


---formatos
ALTER TABLE formatos ADD CONSTRAINT PK_FORMATOS PRIMARY KEY(fId);


---categorias
ALTER TABLE categorias ADD CONSTRAINT PK_CATEGORIAS PRIMARY KEY(caId);


---versiones 
ALTER TABLE versiones  ADD CONSTRAINT PK_VERSIONES PRIMARY KEY(Formatos_fId, Contenidos_cId );


---clasificaciones
ALTER TABLE clasificaciones  ADD CONSTRAINT PK_CLASIFICACIONES PRIMARY KEY(Contenidos_cId , Categorias_caId );


---cuentasXidiomas
ALTER TABLE cuentasXidiomas  ADD CONSTRAINT PK_CUENTASXIDIOMAS PRIMARY KEY(Cuentas_Id , Idiomas);


---recomendacionesXusuarios
ALTER TABLE recomendacionesXusuarios  ADD CONSTRAINT PK_RECOMENDACIONESXUSUARIOS PRIMARY KEY(r_Id , Usuarios_Id);


---publicidades
ALTER TABLE publicidades ADD CONSTRAINT PK_PUBLICIDADES PRIMARY KEY(pId);


---fuentes
ALTER TABLE fuentes ADD CONSTRAINT PK_FUENTES PRIMARY KEY(fuenteId);


---actores
ALTER TABLE actores ADD CONSTRAINT PK_ACTORES PRIMARY KEY(id);


---directores
ALTER TABLE directores ADD CONSTRAINT PK_DIRECTORES PRIMARY KEY(id);


---premios
ALTER TABLE premios ADD CONSTRAINT PK_PREMIOS PRIMARY KEY(id);




----Claves unicas


---cuentas
ALTER TABLE cuentas ADD CONSTRAINT UK_CUENTAS UNIQUE(email);

---logins
ALTER TABLE logins ADD CONSTRAINT UK_LOGINS UNIQUE(correo);

---anuncios
ALTER TABLE anuncios ADD CONSTRAINT UK_ANUNCIOS_URL UNIQUE (url);

---reconocimientos
ALTER TABLE reconocimientos ADD CONSTRAINT UK_RECONOCIMIENTOS_NOMBRE UNIQUE (nombre);

---fuentes
ALTER TABLE fuentes ADD CONSTRAINT UK_FUENTES_URL UNIQUE (url);




----Claves Foraneas


---recomendacionesXusuarios
ALTER TABLE recomendacionesXusuarios ADD CONSTRAINT FK_RXU_USUARIOS FOREIGN KEY(Usuarios_Id) REFERENCES usuarios(userId);
ALTER TABLE recomendacionesXusuarios ADD CONSTRAINT FK_RXU_RECOMENDACIONES FOREIGN KEY(r_Id) REFERENCES recomendaciones(rId);
 
 
---logins
ALTER TABLE logins ADD CONSTRAINT FK_LOGINS_USUARIOS FOREIGN KEY(Usuarios_userId) REFERENCES usuarios(userId);
 
 
---cuentas
ALTER TABLE cuentas ADD CONSTRAINT FK_CUENTAS_USUARIOS FOREIGN KEY(Usuarios_userId) REFERENCES usuarios(userId);
ALTER TABLE cuentas ADD CONSTRAINT FK_CUENTAS_REGIONES FOREIGN KEY(Regiones_nombre) REFERENCES regiones(nombre);


---paises 
ALTER TABLE paises ADD CONSTRAINT FK_PAISES_REGIONES FOREIGN KEY(Regiones_nombre) REFERENCES regiones(nombre);
 
 
---feedbacks 
ALTER TABLE feedbacks ADD CONSTRAINT FK_FEEDBACKS_USUARIOS FOREIGN KEY(Usuarios_userId) REFERENCES usuarios(userId);
ALTER TABLE feedbacks ADD CONSTRAINT FK_FEEDBACKS_CONTENIDOS FOREIGN KEY(Contenidos_Id) REFERENCES contenidos(cId);
 
 
---filtros
ALTER TABLE filtros ADD CONSTRAINT FK_FILTROS_CONSULTAS FOREIGN KEY(Consultas_consultId) REFERENCES consultas(consultId) ON DELETE CASCADE;


---registros
ALTER TABLE registros ADD CONSTRAINT FK_REGISTROS_CONSULTAS FOREIGN KEY(Consultas_consultId) REFERENCES consultas(consultId);


---contenidos
ALTER TABLE contenidos ADD CONSTRAINT FK_CONTENIDOS_CONSULTAS FOREIGN KEY(Consultas_consultId) REFERENCES consultas(consultId);


---cuentaAsociada
ALTER TABLE  cuentaAsociada ADD CONSTRAINT FK_CUENTAASOCIADA_USUARIOS FOREIGN KEY(Usuarios_userId) REFERENCES usuarios(userId);
ALTER TABLE  cuentaAsociada ADD CONSTRAINT FK_CUENTAASOCIADA_PLATAFORMAS FOREIGN KEY(Plataformas_nombre) REFERENCES plataformas(nombre);


---anuncios
ALTER TABLE anuncios ADD CONSTRAINT FK_ANUNCIOS_PLATAFORMAS FOREIGN KEY(Plataformas_nombre) REFERENCES plataformas(nombre);


---reconocimientos
ALTER TABLE reconocimientos ADD CONSTRAINT FK_RECONOCIMIENTOS_CONTENIDOS FOREIGN KEY(Contenidos_cId) REFERENCES contenidos(cId);


---peliculas
ALTER TABLE peliculas ADD CONSTRAINT FK_PELICULAS_CONTENIDOS FOREIGN KEY(Contenidos_cId) REFERENCES contenidos(cId);


---series
ALTER TABLE series ADD CONSTRAINT FK_SERIES_CONTENIDOS FOREIGN KEY(Contenidos_cId) REFERENCES contenidos(cId);


---formatos
ALTER TABLE  formatos  ADD CONSTRAINT FK_FORMATOS_PLATAFORMAS FOREIGN KEY(Plataformas_nombre) REFERENCES plataformas(nombre);


---categorias
ALTER TABLE  categorias ADD CONSTRAINT FK_CATEGORIAS_PLATAFORMAS FOREIGN KEY(Plataformas_nombre) REFERENCES plataformas(nombre);


---versiones 
ALTER TABLE versiones  ADD CONSTRAINT FK_VERSIONES_CONTENIDOS FOREIGN KEY(Contenidos_cId) REFERENCES contenidos(cId);
ALTER TABLE versiones  ADD CONSTRAINT FK_VERSIONES_FORMATOS  FOREIGN KEY(Formatos_fId) REFERENCES formatos(fId);


---clasificaciones
ALTER TABLE clasificaciones  ADD CONSTRAINT FK_CLASIFICACIONES_CONTENIDOS FOREIGN KEY(Contenidos_cId) REFERENCES contenidos(cId);
ALTER TABLE clasificaciones  ADD CONSTRAINT FK_CLASIFICACIONE_CATEGORIAS  FOREIGN KEY(Categorias_caId) REFERENCES categorias(caId);


---actores
ALTER TABLE actores  ADD CONSTRAINT FK_ACTORES_FILTROS FOREIGN KEY(filtros_Id) REFERENCES filtros(fId);


---directores
ALTER TABLE directores  ADD CONSTRAINT FK_DIRECTORES_FILTROS FOREIGN KEY(filtros_Id) REFERENCES filtros(fId);


---premios
ALTER TABLE premios  ADD CONSTRAINT FK_PREMIOS_FILTROS FOREIGN KEY(filtros_Id) REFERENCES filtros(fId);


---cuentasXidiomas

ALTER TABLE cuentasXidiomas  ADD CONSTRAINT FK_CXI_IDIOMAS  FOREIGN KEY(idiomas) REFERENCES idiomas(idioma);


---CONSULTAS

ALTER TABLE consultas  ADD CONSTRAINT FK_CONSULT_USUA  FOREIGN KEY(Usuarios_userId) REFERENCES usuarios(UserId);


----Atributos

---usuarios
ALTER TABLE usuarios ADD CONSTRAINT CK_USUARIOS_DATE CHECK(fCreacion> TO_DATE ('19/03/2022','DD/MM/YYYY'));
 
 
---logins
--ALTER TABLE logins ADD CONSTRAINT CK_LOGINS_PASSWORD CHECK(password LIKE('%#%');
ALTER TABLE logins ADD (
    CONSTRAINT CK_LOGINS_EMAIL CHECK(correo LIKE('%@%.%')),
    CONSTRAINT CK_LOGINS_EMAIL_NOT CHECK(correo NOT LIKE('%@%@%'))
);
 
---regiones 
ALTER TABLE regiones ADD CONSTRAINT CK_REGIONES CHECK(nombre IN('Europa', 'Norte America', 'Africa', 'Sur America', 'Asia', 'Oceania'));
 
 
---feedbacks 
ALTER TABLE feedbacks ADD (
    CONSTRAINT CK_FEEDBACKS_SCOREMIN CHECK(score >= 0.0),
    CONSTRAINT CK_FEEDBACKS_SCOREMAX CHECK(score <= 10.0)
);
 
 
---consultas
ALTER TABLE consultas ADD CONSTRAINT CK_CONSULTAS_DATE CHECK(fConsulta> TO_DATE ('19/03/2022','DD/MM/YYYY'));
 
 
---filtros
ALTER TABLE filtros ADD (
    CONSTRAINT CK_FILTROS_DURACION_MAX CHECK(duracion <= 900),
    CONSTRAINT CK_FILTROS_DURACION_MIN CHECK(duracion >= 0)
);


---plataformas
ALTER TABLE plataformas ADD (
    CONSTRAINT CK_PLATAFORMAS_PDATE CHECK(cFecha > TO_DATE ('01/01/1994','DD/MM/YYYY'))
);


---anuncios
ALTER TABLE anuncios ADD (
    CONSTRAINT CK_ANUNCIOS_URL CHECK(url LIKE('www.%.%') OR url LIKE('WWW.%.%'))
);


---reconocimientos
ALTER TABLE reconocimientos ADD (
    CONSTRAINT CK_ANUNCIOS_RFECHA CHECK(rFecha > TO_DATE ('22/03/1895','DD/MM/YYYY'))
);


---peliculas
ALTER TABLE peliculas ADD (
    CONSTRAINT CK_PELICULAS_DURACION_MIN CHECK(duration > 0),
    CONSTRAINT CK_PELICULAS_DURACION_MAX CHECK(duration < 900)
);


---formatos
ALTER TABLE formatos ADD (
    CONSTRAINT CK_FORMATOS_RELACION CHECK(rAspecto LIKE('%:%'))
);


---fuentes
ALTER TABLE fuentes ADD (
    CONSTRAINT CK_FUENTES_URL CHECK(url LIKE('www.%.%') OR url LIKE('WWW.%.%'))
);



---XTablas
DROP TABLE SERIES;
DROP TABLE PELICULAS;
DROP TABLE VERSIONES;
DROP TABLE PAISES;
DROP TABLE RECONOCIMIENTOS;
DROP TABLE REGISTROS;
DROP TABLE PUBLICIDADES;
DROP TABLE ANUNCIOS;
DROP TABLE FUENTES;
DROP TABLE FORMATOS;
DROP TABLE ACTORES;
DROP TABLE DIRECTORES;
DROP TABLE PREMIOS;
DROP TABLE CONTRATOS;
DROP TABLE CUENTASXIDIOMAS;
DROP TABLE LOGINS;
DROP TABLE IDIOMAS;
DROP TABLE FILTROS;
DROP TABLE FEEDBACKS;
DROP TABLE CUENTAASOCIADA;
DROP TABLE CUENTAS;
DROP TABLE REGIONES;
DROP TABLE CLASIFICACIONES;
DROP TABLE CATEGORIAS;
DROP TABLE RECOMENDACIONESXUSUARIOS;
DROP TABLE RECOMENDACIONES;
DROP TABLE CONTENIDOS;
DROP TABLE CONSULTAS;
DROP TABLE USUARIOS;
DROP TABLE PLATAFORMAS;

DELETE FROM CUENTAS;

DELETE FROM SERIES;

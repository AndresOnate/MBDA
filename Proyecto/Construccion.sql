-----Estructura

---usuarios
CREATE TABLE usuarios(
    userId NUMBER(5),
    name VARCHAR(100) NOT NULL,
    fCreacion DATE NOT NULL
 );
 
 
---recomendaciones
CREATE TABLE recomendaciones(
    rId NUMBER(5),
    title VARCHAR(100) NOT NULL
 );
 

---logins
CREATE TABLE logins(
    loginId NUMBER(5),
    correo VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    Usuarios_userId NUMBER(5) NOT NULL,
    Cuentas_cuentaId NUMBER(5) NOT NULL
 );

 
---cuentas
CREATE TABLE cuentas(
    cuentaId NUMBER(5),
    name VARCHAR(100) NOT NULL,
    fCreacion DATE NOT NULL,
    text VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    tipo VARCHAR (100) NOT NULL,
    Usuarios_userId NUMBER(5) NOT NULL,
    Regiones_nombre VARCHAR(100) NOT NULL
 );
 
 
---contratos 
CREATE TABLE contratos(
    cId NUMBER(5),
    duracion NUMBER(5) NOT NULL,
    precio NUMBER(5) NOT NULL,
    formaPago VARCHAR (100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    Cuentas_cuentaId NUMBER(5) NOT NULL
 );
 

---regiones 
CREATE TABLE regiones(
    nombre VARCHAR(100)
 );


---paises 
CREATE TABLE paises(
    nombre VARCHAR(100),
    Regiones_nombre VARCHAR(100) NOT NULL
 );


---idiomas 
CREATE TABLE idiomas(
    idioma VARCHAR(100)
 );
 
 
---feedbacks 
CREATE TABLE feedbacks(
    fId NUMBER(5),
    comentario VARCHAR(100),
    score NUMBER(2,1) NOT NULL,
    Usuarios_userId NUMBER(5) NOT NULL,
    Contenidos_Id NUMBER(5) NOT NULL 
 );
 

---consultas
CREATE TABLE consultas(
    consultId NUMBER(5),
    fConsulta DATE NOT NULL,
    Usuarios_userId NUMBER(5) NOT NULL
 );
 
 
---filtros
CREATE TABLE filtros(
    fId NUMBER(5),
    duracion NUMBER(5),
    Consultas_consultId NUMBER(5) NOT NULL 
);


---registros
CREATE TABLE registros(
    rId NUMBER(5),
    fRegistro DATE NOT NULL,
    consulta VARCHAR(100) NOT NULL,
    Consultas_consultId NUMBER(5) NOT NULL 
);


---contenidos
CREATE TABLE contenidos(
    cId NUMBER(5),
    publishingDate DATE NOT NULL,
    cFecha  DATE NOT NULL,
    title VARCHAR2(100) NOT NULL,
    sinopsis VARCHAR2(100) NOT NULL,
    Consultas_consultId NUMBER(5) NOT NULL
);


---plataformas
CREATE TABLE plataformas(
    nombre VARCHAR2(100),
    cFecha DATE NOT NULL,
    terminos VARCHAR2(100) NOT NULL
);


---CuentaAsociada
CREATE TABLE cuentaAsociada(
    email VARCHAR2(100),
    nUsuario VARCHAR2(100) NOT NULL,
    Usuarios_userId NUMBER(5) NOT NULL,
    Plataformas_nombre VARCHAR(100) NOT NULL
);


---anuncios
CREATE TABLE anuncios(
    anuId NUMBER(5),
    title VARCHAR2(100) NOT NULL,
    url VARCHAR2(100) NOT NULL,
    Plataformas_nombre VARCHAR(100) NOT NULL
);


---reconocimientos
CREATE TABLE reconocimientos(
    rId NUMBER(5),
    rFecha DATE NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    detalles VARCHAR2(100) NOT NULL,
    Contenidos_cId NUMBER(5) NOT NULL
);


---peliculas
CREATE TABLE peliculas(
    duration NUMBER(5) NOT NULL,
    reparto VARCHAR2(100) NOT NULL,
    Contenidos_cId NUMBER(5) NOT NULL   
);


---series
CREATE TABLE series(
    episodios NUMBER(11),
    durationP NUMBER(5) NOT NULL,
    nTemporadas NUMBER(5) NOT NULL,
    reparto VARCHAR2(100) NOT NULL,
    Contenidos_cId NUMBER(5) NOT NULL
);


---formatos
CREATE TABLE formatos(
    fId NUMBER(5),
    rAspecto VARCHAR2(100) NOT NULL,
    definicion VARCHAR2(100) NOT NULL,
    Plataformas_nombre VARCHAR(100) NOT NULL
);


---categorias
CREATE TABLE categorias(
    caId NUMBER(5),
    nombre VARCHAR2(100) NOT NULL,
    clasificacion VARCHAR2(100) NOT NULL,
    año DATE NOT NULL,
    descripcion VARCHAR2(100) NOT NULL,
    genero VARCHAR2(100) NOT NULL,
    Plataformas_nombre VARCHAR(100) NOT NULL
);


---versiones 
CREATE TABLE versiones(
    Formatos_fId NUMBER(5),
    Contenidos_cId  NUMBER(5)
);


---Clasificaciones 
CREATE TABLE clasificaciones(
    Contenidos_cId  NUMBER(5),
    Categorias_caId NUMBER(5)
);


---cuentasXidiomas
CREATE TABLE cuentasXidiomas(
    Cuentas_Id NUMBER(5),
    idiomas VARCHAR(100)
);


---recomendacionesXusuarios
CREATE TABLE recomendacionesXusuarios(
    r_Id NUMBER(5),
    Usuarios_Id NUMBER(5)
);


---publicidades
CREATE TABLE publicidades(
    pId NUMBER(5),
    texto VARCHAR(100)
);


---fuentes
CREATE TABLE fuentes(
    fuenteId NUMBER(5),
    nombre VARCHAR(100),
    url VARCHAR(100)
);


---actores
CREATE TABLE actores(
    filtros_Id NUMBER(5),
    nombre VARCHAR(100),
    id NUMBER(5)
);


---directores
CREATE TABLE directores(
    filtros_Id NUMBER(5),
    nombre VARCHAR(100),
    id NUMBER(5)
);


---premios
CREATE TABLE premios(
    filtros_Id NUMBER(5),
    nombre VARCHAR(100),
    id NUMBER(5)
);



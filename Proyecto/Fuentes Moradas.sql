-- Vistas

-- Región con más cuentas registradas en la plataforma
CREATE VIEW ViewRegionsXUsers AS 
    SELECT Regiones_nombre, COUNT(cuentaId) AS AccountNumber
    FROM cuentas
    GROUP BY Regiones_nombre;

-- Contenido más buscado por día    
CREATE VIEW ViewContentXDay AS
    SELECT fRegistro, Consulta
    FROM registros
    ORDER BY fRegistro;

-- Cantidad de usuarios premium 
CREATE VIEW ViewPremiumUsers AS 
    SELECT COUNT(cuentaId) AS PremiumUsers
    FROM cuentas
    WHERE tipo LIKE('Premium');

-- Plataforma mas usada por los usuarios
CREATE VIEW ViewPlataform AS 
    SELECT nombre, COUNT(Usuarios_userId) AS UsersNumber
    FROM plataformas JOIN cuentaAsociada ON(nombre = Plataformas_nombre)
    GROUP BY nombre;

-- Plataforma que más se anuncie en la aplicación
CREATE VIEW ViewMostAdverPlataform AS 
    SELECT Plataformas_nombre, COUNT(anuId) AS AnumNumber
    FROM anuncios 
    GROUP BY Plataformas_nombre;

-- Cantidad de publicidad generada
CREATE VIEW ViewNumPublicity AS 
    SELECT COUNT(pId) AS PnumNumber
    FROM publicidades;

CREATE VIEW ViewContent AS 
    SELECT title, sinopsis
    FROM contenidos;
    
CREATE VIEW ViewUsersNumber AS
    SELECT COUNT(userId) AS UsersNumber
    FROM usuarios;
    
CREATE VIEW ViewFuentes AS 
    SELECT nombre, url
    FROM fuentes;

CREATE VIEW ViewFiltros AS 
    SELECT fId, duracion
    FROM filtros;

--- Indices
CREATE INDEX INombre ON categorias(nombre);


--XVistas
DROP VIEW ViewContent;
DROP VIEW ViewUsersNumber;
DROP VIEW ViewFuentes;
DROP VIEW ViewContentXDay;
DROP VIEW ViewPlataform;
DROP VIEW ViewRegionsXUsers;
DROP VIEW ViewMostAdverPlataform;
DROP VIEW ViewNumPublicity;
DROP INDEX INombre;
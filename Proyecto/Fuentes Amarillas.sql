-- CRUDE
CREATE OR REPLACE PACKAGE PC_CONTENIDOS IS
    PROCEDURE AD_CONTENIDOS (xpublishingDate IN DATE, xcFecha IN DATE, xtitle IN VARCHAR, xsinopsis IN VARCHAR, xconsultId IN NUMBER);  
    PROCEDURE AD_RECONOCIMIENTOS (xrFecha IN DATE, xnombre IN VARCHAR, xdetalles IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_PELICULAS (xduration IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_SERIES (xepisodios IN NUMBER, xdurationP IN NUMBER, xnTemporadas IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_FEEDBACKS (xcomentario IN VARCHAR, xscore IN NUMBER, xuserId IN NUMBER, xcId IN NUMBER);
    PROCEDURE MO_FEEDBACKS (xfId IN NUMBER, xcomentario IN VARCHAR, xscore IN NUMBER);
    PROCEDURE DE_FEEDBACKS (xfId IN NUMBER);
    PROCEDURE AD_FORMATOS (xrAspecto IN VARCHAR, xdefinicion IN NUMBER, xplataformas_nombre IN VARCHAR); 
    FUNCTION CO_CONTENIDO_GENERAL RETURN SYS_REFCURSOR;
END PC_CONTENIDOS;
/ 

CREATE OR REPLACE PACKAGE PC_USUARIOS IS
    PROCEDURE AD_USUARIOS (xname IN VARCHAR, xfCreacion IN DATE);  
    PROCEDURE AD_RECOMENDACIONES (xtitle IN VARCHAR); 
    PROCEDURE AD_LOGINS (xcorreo IN VARCHAR, xpassword IN VARCHAR, xuserId IN NUMBER, xcuentaId IN NUMBER); 
    PROCEDURE AD_CUENTAS (xname IN VARCHAR, xfCreacion IN DATE, xtext IN VARCHAR, xemail IN VARCHAR, xtipo IN VARCHAR, xuserId IN NUMBER, xregion IN VARCHAR); 
    PROCEDURE MO_CUENTAS (xname IN VARCHAR, xtext IN VARCHAR, xemail IN VARCHAR); 
    PROCEDURE DE_CUENTAS (xname IN VARCHAR, xemail IN VARCHAR, xregion IN VARCHAR); 
    PROCEDURE AD_CONTRATOS (xduracion IN NUMBER, xprecio IN NUMBER, xformaPago IN VARCHAR, xestado IN VARCHAR, xcuentaId IN NUMBER); 
    FUNCTION CO_USUARIOS_X_PLATAFORMAS RETURN SYS_REFCURSOR;
    FUNCTION CO_USUARIOS_X_REGION RETURN SYS_REFCURSOR;
    FUNCTION CO_USUARIOS_PREMIUM RETURN SYS_REFCURSOR;
END PC_USUARIOS;
/ 

CREATE OR REPLACE PACKAGE PC_FUENTES IS
    PROCEDURE AD_FUENTES (nombre IN VARCHAR, url IN VARCHAR);
    PROCEDURE MO_FUENTES (xnombre IN VARCHAR, xurl IN VARCHAR);
    PROCEDURE DE_FUENTES (xnombre IN VARCHAR, xurl IN VARCHAR);
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR;
END PC_FUENTES;
/

CREATE OR REPLACE PACKAGE PC_PUBLICIDADES IS
    PROCEDURE AD_PUBLICIDADES (texto IN VARCHAR);
    PROCEDURE MO_PUBLICIDADES (xpId IN NUMBER, xtexto IN VARCHAR);
    PROCEDURE DE_PUBLICIDADES (xpId IN NUMBER, xtexto IN VARCHAR);
    FUNCTION CO_PUBLICIDADES RETURN SYS_REFCURSOR;
END PC_PUBLICIDADES ;
/

CREATE OR REPLACE PACKAGE PC_CONSULTAS IS
    PROCEDURE AD_CONSULTA (xfConsulta IN DATE, userId IN NUMBER);  
    PROCEDURE AD_REGISTRO (xfRegistro IN DATE, xconsulta IN VARCHAR, consultId IN NUMBER); 
    PROCEDURE AD_FILTRO (xduracion IN NUMBER, consultId IN NUMBER); 
    PROCEDURE AD_ACTOR (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE AD_DIRECTOR (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE AD_PREMIO (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE MO_FILTRO(xduracion IN NUMBER,filtroid IN NUMBER);  
    FUNCTION CO_CONTENIDO_MAS_BUSCADO RETURN SYS_REFCURSOR;
    FUNCTION CO_CONSULTAS_DE_USUARIO(usuarioId IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION CO_FILTROS RETURN SYS_REFCURSOR;
END PC_CONSULTAS;
/ 

CREATE OR REPLACE PACKAGE PC_PLATAFORMAS IS
    PROCEDURE AD_PLATAFORMA(xnombre IN VARCHAR, xcFecha IN DATE, terminos IN VARCHAR);  
    PROCEDURE MO_PLATAFORMA(xnombre IN VARCHAR, xterminos IN VARCHAR); 
    PROCEDURE AD_ANUNCIO(xtitle IN VARCHAR, xurl IN VARCHAR, xplataforma IN VARCHAR);
    PROCEDURE MO_ANUNCIO(xanuncioId IN NUMBER, xtitle IN VARCHAR, xurl IN VARCHAR); 
    PROCEDURE DE_ANUNCIO(xanuncioId IN NUMBER); 
    PROCEDURE AD_CATEGORIA(xnombre IN VARCHAR, xclasificacion IN VARCHAR, xaño IN DATE, descripcion IN VARCHAR, genero IN VARCHAR, plataforma IN VARCHAR );
    PROCEDURE MO_CATEGORIA(xcategoriaId IN NUMBER, xdescripcion IN VARCHAR); 
    PROCEDURE AD_CLASIFICACION(xContenido IN NUMBER, xClasificacion IN NUMBER); 
    PROCEDURE AD_CUENTA_ASOCIADA(xEmail IN VARCHAR, xnUsuario  IN VARCHAR, xUserId IN NUMBER, xplataforma IN VARCHAR); 
    PROCEDURE DE_CUENTA_ASOCIADA(xEmail IN VARCHAR, xplataforma IN VARCHAR); 
    FUNCTION CO_PLATAFORMA_MAS_ANUNCIADA RETURN SYS_REFCURSOR;
    FUNCTION CO_PLATAFORMA_MAS_USADA RETURN SYS_REFCURSOR;
    FUNCTION CO_PLATAFORMAS RETURN SYS_REFCURSOR;   
    FUNCTION CO_ANUNCIO(xplataforma IN VARCHAR) RETURN SYS_REFCURSOR; 
END PC_PLATAFORMAS;
/  

CREATE OR REPLACE PACKAGE PC_REGIONES IS
    PROCEDURE AD_REGION(xnombre IN VARCHAR);  
    PROCEDURE AD_PAIS(xnombre IN VARCHAR, xregion IN VARCHAR);
    PROCEDURE MO_REGION(xnombre IN VARCHAR,xnombreMo IN VARCHAR);  
    PROCEDURE MO_PAIS(xnombre IN VARCHAR, xnombreMo IN VARCHAR, xregion IN VARCHAR);
    FUNCTION CO_REGIONES RETURN SYS_REFCURSOR;
    FUNCTION CO_PAISES(xregion IN VARCHAR) RETURN SYS_REFCURSOR;
END PC_REGIONES;
/ 
CREATE OR REPLACE PACKAGE PC_IDIOMAS IS
    PROCEDURE AD_IDIOMA(xIdioma IN VARCHAR);  
    PROCEDURE MO_IDIOMA(xIdioma IN VARCHAR, zIdioma IN VARCHAR ); 
    PROCEDURE DE_IDIOMA(xIdioma IN VARCHAR);  
    PROCEDURE AD_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR);  
    PROCEDURE MO_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR,zIdioma IN VARCHAR); 
    PROCEDURE DE_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR);  
    FUNCTION CO_IDIOMA RETURN SYS_REFCURSOR;
END PC_IDIOMAS;
/ 

--CRUDI
CREATE OR REPLACE PACKAGE BODY PC_CONTENIDOS IS
    PROCEDURE AD_CONTENIDOS (xpublishingDate IN DATE, xcFecha IN DATE, xtitle IN VARCHAR, xsinopsis IN VARCHAR, xconsultId IN NUMBER) IS
    BEGIN
        INSERT INTO contenidos (cId, publishingDate, cFecha, title, sinopsis, Consultas_consultId) VALUES ('', xpublishingDate, xcFecha, xtitle, xsinopsis, xconsultId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001, SQLERRM);
    END;
    
    PROCEDURE AD_RECONOCIMIENTOS (xrFecha IN DATE, xnombre IN VARCHAR, xdetalles IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        INSERT INTO reconocimientos (rId, rFecha, nombre, detalles, Contenidos_cId) values ('', xrFecha, xnombre, xdetalles, xcId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20002, SQLERRM);
    END;
    
    PROCEDURE AD_PELICULAS (xduration IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        INSERT INTO peliculas (duration, reparto, Contenidos_cId) values (xduration, xreparto, xcId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20003, SQLERRM);
    END;    
          
    PROCEDURE AD_SERIES (xepisodios IN NUMBER, xdurationP IN NUMBER, xnTemporadas IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        INSERT INTO series (episodios, durationP, nTemporadas, reparto, Contenidos_cId) values (xepisodios, xdurationP, xnTemporadas, xreparto, xcId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20004, SQLERRM);
    END; 
    
    PROCEDURE AD_FEEDBACKS (xcomentario IN VARCHAR, xscore IN NUMBER, xuserId IN NUMBER, xcId IN NUMBER) IS
    BEGIN
        INSERT INTO feedbacks (fId, comentario, score, Usuarios_userId, Contenidos_Id) values ('', xcomentario, xscore, xuserId, xcId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20005, SQLERRM);
    END;  
    
    PROCEDURE MO_FEEDBACKS (xfId IN NUMBER, xcomentario IN VARCHAR, xscore IN NUMBER) IS
    BEGIN
        UPDATE feedbacks SET comentario = xcomentario, score = xscore WHERE fId = xfId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20051, SQLERRM);
    END; 
    
    PROCEDURE DE_FEEDBACKS(xfId IN NUMBER) IS
    BEGIN
        DELETE FROM feedbacks WHERE fId = xfId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20052, SQLERRM);
    END;
    
    PROCEDURE AD_FORMATOS (xrAspecto IN VARCHAR, xdefinicion IN NUMBER, xplataformas_nombre IN VARCHAR) IS
    BEGIN
        INSERT INTO formatos (fId, rAspecto, definicion, Plataformas_nombre) values ('', xrAspecto, xdefinicion, xplataformas_nombre);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20006, SQLERRM);
    END; 
      
    FUNCTION CO_CONTENIDO_GENERAL RETURN SYS_REFCURSOR IS CO_GEN_CONT SYS_REFCURSOR;
    BEGIN
        OPEN CO_GEN_CONT FOR
            SELECT * FROM ViewContent;
        RETURN CO_GEN_CONT;
    END; 
    
END PC_CONTENIDOS;
/ 
-----------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_USUARIOS IS
    PROCEDURE AD_USUARIOS (xname IN VARCHAR, xfCreacion IN DATE) IS
    BEGIN
        INSERT INTO usuarios (userId, name, fCreacion) VALUES ('', xname, xfCreacion);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20007, SQLERRM);
    END;
    
    PROCEDURE AD_RECOMENDACIONES (xtitle IN VARCHAR) IS
    BEGIN
        INSERT INTO recomendaciones (rId, title) values ('', xtitle);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20008, SQLERRM);
    END;
    
    PROCEDURE AD_LOGINS (xcorreo IN VARCHAR, xpassword IN VARCHAR, xuserId IN NUMBER, xcuentaId IN NUMBER) IS
    BEGIN
        INSERT INTO logins (loginId, correo, password, Usuarios_userId, Cuentas_cuentaId) values ('', xcorreo, xpassword, xuserId, xcuentaId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20009, SQLERRM);
    END;    
          
    PROCEDURE AD_CUENTAS (xname IN VARCHAR, xfCreacion IN DATE, xtext IN VARCHAR, xemail IN VARCHAR, xtipo IN VARCHAR, xuserId IN NUMBER, xregion IN VARCHAR) IS
    BEGIN
        INSERT INTO cuentas (cuentaId, name, fCreacion, text, email, tipo, Usuarios_userId, Regiones_nombre) values ('', xname, xfCreacion, xtext, xemail, xtipo, xuserId, xregion);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20010, SQLERRM);
    END; 
    
    PROCEDURE MO_CUENTAS (xname IN VARCHAR, xtext IN VARCHAR, xemail IN VARCHAR) IS
    BEGIN
        UPDATE cuentas SET name = xname, text = xtext WHERE email = xemail;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20053, SQLERRM);
    END; 
    
    PROCEDURE DE_CUENTAS (xname IN VARCHAR, xemail IN VARCHAR, xregion IN VARCHAR) IS
    BEGIN
        DELETE FROM cuentas WHERE xname = xname AND xemail = xemail AND xregion = xregion;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20054, SQLERRM);
    END;
    
    PROCEDURE AD_CONTRATOS (xduracion IN NUMBER, xprecio IN NUMBER, xformaPago IN VARCHAR, xestado IN VARCHAR, xcuentaId IN NUMBER) IS
    BEGIN
        INSERT INTO contratos (cId , duracion, precio, formaPago, estado, Cuentas_cuentaId) values ('', xduracion, xprecio, xformaPago, xestado, xcuentaId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20011, SQLERRM);
    END;
      
    FUNCTION CO_USUARIOS_X_PLATAFORMAS RETURN SYS_REFCURSOR IS CO_USR_PLAT SYS_REFCURSOR;
    BEGIN
        OPEN CO_USR_PLAT FOR
            SELECT * FROM ViewPlataform;
        RETURN CO_USR_PLAT;
    END; 
    
    FUNCTION CO_USUARIOS_X_REGION RETURN SYS_REFCURSOR IS CO_USR_REG SYS_REFCURSOR;
    BEGIN
        OPEN CO_USR_REG FOR
            SELECT * FROM ViewRegionsXUsers;
        RETURN CO_USR_REG;
    END;
    
    FUNCTION CO_USUARIOS_PREMIUM RETURN SYS_REFCURSOR IS CO_USR_PREM SYS_REFCURSOR;
    BEGIN
        OPEN CO_USR_PREM FOR
            SELECT * FROM ViewPremiumUsers;
        RETURN CO_USR_PREM;
    END;
END PC_USUARIOS;
/ 
---------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_FUENTES IS
    PROCEDURE AD_FUENTES (nombre IN VARCHAR, url IN VARCHAR) IS
    BEGIN
        INSERT INTO fuentes (fuenteId, nombre, url) VALUES ('', nombre, url);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20012, SQLERRM);
    END;
    
    PROCEDURE MO_FUENTES(xnombre IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        UPDATE fuentes SET nombre = xnombre WHERE url = xurl;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20013, SQLERRM);
    END; 
    
    PROCEDURE DE_FUENTES(xnombre IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        DELETE FROM fuentes WHERE nombre = xnombre AND url = xurl;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20014, SQLERRM);
    END;
    
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR IS CO_SRCS SYS_REFCURSOR;
    BEGIN
        OPEN CO_SRCS FOR
            SELECT * FROM ViewFuentes;
        RETURN CO_SRCS;
    END; 
END PC_FUENTES;
/
------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_PUBLICIDADES IS
    PROCEDURE AD_PUBLICIDADES(texto IN VARCHAR) IS
    BEGIN
        INSERT INTO publicidades (pId, texto) VALUES ('', texto);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20015, SQLERRM);
    END;
    
    PROCEDURE MO_PUBLICIDADES(xpId IN NUMBER, xtexto IN VARCHAR) IS
    BEGIN
        UPDATE publicidades SET texto = xtexto WHERE pId = xpId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20016, SQLERRM);
    END; 
    
    PROCEDURE DE_PUBLICIDADES(xpId IN NUMBER, xtexto IN VARCHAR) IS
    BEGIN
        DELETE FROM publicidades WHERE pId = xpId AND texto = xtexto;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20017, SQLERRM);
    END;
    
    FUNCTION CO_PUBLICIDADES RETURN SYS_REFCURSOR IS CO_ADS SYS_REFCURSOR;
    BEGIN
        OPEN CO_ADS FOR
            SELECT * FROM publicidades;
        RETURN CO_ADS;
    END; 
END PC_PUBLICIDADES;
/
-----------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_CONSULTAS IS
    PROCEDURE AD_CONSULTA (xfConsulta IN DATE, userId IN NUMBER) IS
    BEGIN
        INSERT INTO consultas (consultId, fConsulta, Usuarios_userId) VALUES ( '', xfConsulta , userId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20018, SQLERRM);
    END;
    
    PROCEDURE AD_REGISTRO (xfRegistro IN DATE, xconsulta IN VARCHAR, consultId IN NUMBER) IS
    BEGIN
        INSERT INTO registros (rId, fRegistro, consulta, Consultas_consultId) values ('', xfRegistro, xconsulta, consultId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20019, SQLERRM);
    END;
    
    PROCEDURE AD_FILTRO (xduracion IN NUMBER, consultId IN NUMBER) IS
    BEGIN
        INSERT INTO filtros (fId, duracion, Consultas_consultId) values ('', xduracion, consultId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20020, SQLERRM);
    END;    
          
    PROCEDURE AD_ACTOR(xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO actores (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20021, SQLERRM);
    END; 
    
    PROCEDURE AD_DIRECTOR (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO directores (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20022, SQLERRM);
    END;  
    
    PROCEDURE AD_PREMIO (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO premios (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20023, SQLERRM);
    END; 
    
    PROCEDURE MO_FILTRO(xduracion IN NUMBER,filtroid IN NUMBER) IS
    BEGIN
        UPDATE filtros SET duracion = xduracion WHERE fId = filtroid;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20024, SQLERRM);
    END; 
      
    FUNCTION CO_CONTENIDO_MAS_BUSCADO RETURN SYS_REFCURSOR IS CO_CONT SYS_REFCURSOR;
    BEGIN
        OPEN CO_CONT FOR
            SELECT contenidos.title, contenidos.sinopsis, COUNT(contenidos.title) AS consultas
            FROM contenidos JOIN consultas ON (consultas.consultId = contenidos.cId) 
            group by contenidos.title, contenidos.sinopsis
            ORDER BY consultas DESC;
        RETURN CO_CONT;
    END; 
    

    FUNCTION CO_CONSULTAS_DE_USUARIO(usuarioId IN NUMBER) RETURN SYS_REFCURSOR IS CO_CONT_USER SYS_REFCURSOR;
    BEGIN
        OPEN CO_CONT_USER FOR
            SELECT consultas.fconsulta, registros.consulta
            FROM consultas JOIN registros ON (consultas.consultId = registros.Consultas_consultId) 
            WHERE consultas.Usuarios_userId = usuarioId;
        RETURN CO_CONT_USER;
    END;   
    
    FUNCTION CO_FILTROS RETURN SYS_REFCURSOR IS CO_FIL SYS_REFCURSOR;
    BEGIN
        OPEN CO_FIL FOR
            SELECT * FROM FILTROS;
        RETURN CO_FIL;
    END; 
END PC_CONSULTAS;
/ 

--------------------------------------------------Plataformas-----------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_PLATAFORMAS IS
    PROCEDURE AD_PLATAFORMA(xnombre IN VARCHAR, xcFecha IN DATE, terminos IN VARCHAR) IS
    BEGIN
        INSERT INTO plataformas(nombre, cFecha, terminos) values (xnombre, xcFecha,terminos);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20025, SQLERRM);
    END;
    
    PROCEDURE MO_PLATAFORMA(xnombre IN VARCHAR, xterminos IN VARCHAR) IS
    BEGIN
        UPDATE plataformas SET terminos = xterminos WHERE  nombre = xnombre;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20026, SQLERRM);
    END; 
    
    PROCEDURE AD_ANUNCIO(xtitle IN VARCHAR, xurl IN VARCHAR, xplataforma IN VARCHAR) IS
    BEGIN
        INSERT INTO anuncios(anuId, title, url, Plataformas_nombre) values ('', xtitle, xurl, xplataforma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20027, SQLERRM);
    END;
    
    PROCEDURE MO_ANUNCIO(xanuncioId IN NUMBER, xtitle IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        UPDATE anuncios SET title =  xtitle, url = xurl  WHERE anuId = xanuncioId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20028, SQLERRM);
    END; 
    
    PROCEDURE DE_ANUNCIO(xanuncioId IN NUMBER) IS
    BEGIN
        DELETE FROM anuncios WHERE anuId = xanuncioId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20029, SQLERRM);
    END; 
    
    
    PROCEDURE AD_CATEGORIA(xnombre IN VARCHAR, xclasificacion IN VARCHAR, xaño IN DATE, descripcion IN VARCHAR, genero IN VARCHAR, plataforma IN VARCHAR ) IS
    BEGIN
        INSERT INTO categorias(caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', xnombre, xclasificacion, xaño, descripcion, genero, plataforma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20030, SQLERRM);
    END;
      
    PROCEDURE MO_CATEGORIA(xcategoriaId IN NUMBER, xdescripcion IN VARCHAR) IS
    BEGIN
        UPDATE categorias SET descripcion = xdescripcion WHERE caId = xcategoriaId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20031, SQLERRM);
    END;
    
    PROCEDURE AD_CLASIFICACION(xContenido IN NUMBER, xClasificacion IN NUMBER) IS
    BEGIN
        insert into clasificaciones (Contenidos_cId, Categorias_caId ) values (xContenido, xClasificacion );
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20032, SQLERRM);
    END;
    
    PROCEDURE AD_CUENTA_ASOCIADA(xEmail IN VARCHAR, xnUsuario  IN VARCHAR, xUserId IN NUMBER, xplataforma IN VARCHAR) IS
    BEGIN
        insert into cuentaAsociada (email, nUsuario, Usuarios_userId, Plataformas_nombre) values (xEmail,xnUsuario, xUserId, xplataforma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20033, SQLERRM);
    END;
    
    PROCEDURE DE_CUENTA_ASOCIADA(xEmail IN VARCHAR, xplataforma IN VARCHAR) IS
    BEGIN
        DELETE FROM cuentaAsociada WHERE email = xEmail AND Plataformas_nombre = xplataforma;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20034, SQLERRM);
    END;

    FUNCTION CO_PLATAFORMAS RETURN SYS_REFCURSOR IS CO_PLAT SYS_REFCURSOR;
    BEGIN
        OPEN CO_PLAT  FOR
            SELECT plataformas.nombre
            FROM plataformas;
        RETURN CO_PLAT ;
    END; 
    
    FUNCTION CO_PLATAFORMA_MAS_USADA RETURN SYS_REFCURSOR IS CO_PLATAFORMAS SYS_REFCURSOR;
    BEGIN
        OPEN CO_PLATAFORMAS FOR
            SELECT *
            FROM ViewPlataform;
        RETURN CO_PLATAFORMAS;
    END; 
    
    FUNCTION CO_PLATAFORMA_MAS_ANUNCIADA RETURN SYS_REFCURSOR IS CO_PLATAF_MA SYS_REFCURSOR;
    BEGIN
        OPEN CO_PLATAF_MA FOR
            SELECT *
            FROM ViewMostAdverPlataform;
        RETURN CO_PLATAF_MA;
    END; 
    FUNCTION CO_ANUNCIO(xPlataforma IN VARCHAR) RETURN SYS_REFCURSOR IS CO_ANU SYS_REFCURSOR;
    BEGIN
        OPEN CO_ANU FOR
            SELECT *
            FROM anuncios
            WHERE Plataformas_nombre = xPlataforma;
        RETURN CO_ANU;
    END; 
    
END PC_PLATAFORMAS;
/ 
-----------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PC_REGIONES IS

    PROCEDURE AD_REGION(xnombre IN VARCHAR) IS
    BEGIN
        insert into regiones (nombre) values (xnombre);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20035, SQLERRM);
    END;
    
    PROCEDURE AD_PAIS(xnombre IN VARCHAR, xregion IN VARCHAR) IS
    BEGIN
        insert into paises (nombre, Regiones_nombre) values (xnombre,xregion);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20036, SQLERRM);
    END;
    
    PROCEDURE  MO_REGION(xnombre IN VARCHAR,xnombreMo IN VARCHAR) IS
    BEGIN
        UPDATE regiones SET nombre = xnombreMo WHERE nombre = xnombre;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20037, SQLERRM);
    END;
    
    PROCEDURE MO_PAIS(xnombre IN VARCHAR, xnombreMo IN VARCHAR, xregion IN VARCHAR) IS
    BEGIN
        UPDATE paises SET nombre = xnombreMo WHERE nombre = xnombre AND Regiones_nombre =xregion ;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20038, SQLERRM);
    END;
    
    FUNCTION CO_REGIONES RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
    BEGIN
        OPEN CO_RE FOR
            SELECT regiones.nombre
            FROM regiones;
        RETURN CO_RE;
    END; 
    
    FUNCTION CO_PAISES(xregion IN VARCHAR) RETURN SYS_REFCURSOR IS CO_PA SYS_REFCURSOR;
    BEGIN
        OPEN CO_PA FOR
            SELECT paises.nombre
            FROM paises
            WHERE paises.Regiones_nombre = xregion;
        RETURN CO_PA;
    END; 
    
END PC_REGIONES;
/ 

CREATE OR REPLACE PACKAGE BODY PC_IDIOMAS IS
    PROCEDURE AD_IDIOMA(xIdioma IN VARCHAR) IS
    BEGIN
        insert into idiomas (idioma) values (xIdioma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20039, SQLERRM);
    END;   
    PROCEDURE MO_IDIOMA(xIdioma IN VARCHAR, zIdioma IN VARCHAR) IS
    BEGIN
        UPDATE idiomas SET idioma = zIdioma WHERE idioma = xIdioma;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20040, SQLERRM);
    END;    
    PROCEDURE DE_IDIOMA(xIdioma IN VARCHAR) IS
    BEGIN
        DELETE FROM idiomas WHERE idioma = xIdioma;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20041, SQLERRM);
    END;
    PROCEDURE AD_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR) IS
    BEGIN
        insert into cuentasXidiomas (cuentas_id, idiomas) values (xCuentaId, xIdioma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20042, SQLERRM);
    END;
    PROCEDURE MO_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR,zIdioma IN VARCHAR) IS
    BEGIN
        UPDATE cuentasXidiomas SET idiomas = zIdioma WHERE idiomas = xIdioma and cuentas_id = xCuentaId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20043, SQLERRM);
    END;
    PROCEDURE DE_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR) IS
    BEGIN
        DELETE FROM cuentasXidiomas WHERE idiomas = xIdioma and cuentas_id = xCuentaId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20044, SQLERRM);
    END;
    FUNCTION CO_IDIOMA RETURN SYS_REFCURSOR IS CO_ID SYS_REFCURSOR;
    BEGIN
        OPEN CO_ID FOR
            SELECT *
            FROM idiomas;
        RETURN CO_ID;
    END;        
END PC_IDIOMAS;
/ 
--CRUDOK

---------------------------------------------------------Contenidos--------------------------------------------------------------
BEGIN
    PC_CONTENIDOS.AD_CONTENIDOS('06/05/2022', '07/05/2022', 'The Hunger Games', 'asaas', 1);  
END;

BEGIN
    PC_CONTENIDOS.AD_RECONOCIMIENTOS ('06/08/2021', 'Oscar', 'dasdasdasd sdaadadas dassdadwa dsdawdwa', 1); 
END;

BEGIN
    PC_CONTENIDOS.AD_PELICULAS (60, 'fasqw  ffeadfw reffa fefaf', 1); 
END;

BEGIN
    PC_CONTENIDOS.AD_SERIES (24, 35, 2, 'asadasd dwdad wadadawd fradawa dg', 1); 
END; 

BEGIN
    PC_CONTENIDOS.AD_FEEDBACKS ('daadna iadoawd ad inadponawd ada fgh', 7, 1, 1); 
END;

BEGIN
    PC_CONTENIDOS.AD_FORMATOS ('16:9', 720, 'Netflix'); 
END;


VARIABLE content REFCURSOR;
EXECUTE :content :=  PC_CONTENIDOS.CO_CONTENIDO_GENERAL();
PRINT :content;

---------------------------------------------------------Usuarios--------------------------------------------------------------
BEGIN
    PC_USUARIOS.AD_USUARIOS ('Mateo', '07/05/2022'); 
END;

BEGIN
    PC_USUARIOS.AD_RECOMENDACIONES ('sadadasdf e effef'); 
END;

BEGIN
    PC_USUARIOS.AD_LOGINS ('kskakksas@gmail.com', 'fef533wada', 1, 1); 
END;

BEGIN
    PC_USUARIOS.AD_CUENTAS ('DarkKnight', '24/04/2022', 'assasdasdsd', 'kskakksas@gmail.com', 'Premium', 1, 'Europa'); 
END;

BEGIN
    PC_USUARIOS.AD_CONTRATOS (8, 10, 'Visa', 'Activo', 1); 
END;

VARIABLE UsersXPlat REFCURSOR;
EXECUTE :UsersXPlat :=  PC_USUARIOS.CO_USUARIOS_X_PLATAFORMAS();
PRINT :UsersXPlat;

---------------------------------------------------------Fuentes--------------------------------------------------------------
BEGIN
    PC_FUENTES.AD_FUENTES ('Rotten Tomatoes', 'https://www.rottentomatoes.com/');
END;

VARIABLE Sources REFCURSOR;
EXECUTE :Sources :=  PC_FUENTES.CO_FUENTES();
PRINT :Sources;

---------------------------------------------------------Publicidades--------------------------------------------------------------
BEGIN
    PC_PUBLICIDADES.AD_PUBLICIDADES ('nndañsdñi fadnaskdadw fadsd wda sd e wadaldida wd adwdfna');
END;

---------------------------------------------------------Consultas--------------------------------------------------------------
BEGIN
    PC_CONSULTAS.AD_CONSULTA('5/05/2022', 100);
END;

BEGIN
    PC_CONSULTAS.AD_REGISTRO('5/05/2022', 'The Boys',2);
END;

BEGIN
    PC_CONSULTAS.AD_FILTRO(130, 10);
END;

BEGIN
    PC_CONSULTAS.AD_ACTOR('Al Pacino', 9);
END;

BEGIN
    PC_CONSULTAS.AD_DIRECTOR('Guillermo del Toro', 9);
END;

BEGIN
    PC_CONSULTAS.AD_PREMIO('Premios Óscar', 9);
END;

BEGIN
    PC_CONSULTAS.MO_FILTRO(230, 9);
END;

VARIABLE subs REFCURSOR;
EXECUTE :subs :=  PC_CONSULTAS.CO_CONTENIDO_MAS_BUSCADO();
PRINT :subs;

VARIABLE consult2 REFCURSOR;
EXECUTE :consult2 :=  PC_CONSULTAS.CO_CONSULTAS_DE_USUARIO(100);
PRINT :consult2;

VARIABLE consult11 REFCURSOR;
EXECUTE :consult11 :=  PC_CONSULTAS.CO_FILTROS();
PRINT :consult11;
-------------------------------------------------------Plataformas--------------------------------------------------------------

BEGIN
    PC_PLATAFORMAS.AD_PLATAFORMA('Crunchyroll', '15/05/2006', 'To become a Crunchyroll Member you must be at least 16 years of age.');
END;

BEGIN
    PC_PLATAFORMAS.MO_PLATAFORMA('Netflix', 'we grant you a limited, non-exclusive, non-transferable, license to access the Netflix');
END;

BEGIN
    PC_PLATAFORMAS.AD_ANUNCIO('Solo en Netflix', 'www.netflix.com', 'Netflix');
END;

BEGIN
    PC_PLATAFORMAS.MO_ANUNCIO(5010, 'Navidad', 'www.netflix.com');
END;

BEGIN
    PC_PLATAFORMAS.DE_ANUNCIO(5001);
END;

BEGIN
    PC_PLATAFORMAS.AD_CATEGORIA('Musicales', 'G', '29/09/2006', 'cortan su desarrollo natural con fragmentos musicales', 'Musicales', 'Disney +');
END;

BEGIN
    PC_PLATAFORMAS.MO_CATEGORIA(101,'No especificada');
END;

BEGIN
    PC_PLATAFORMAS.AD_CLASIFICACION(2,100);
END;

BEGIN
    PC_PLATAFORMAS.AD_CUENTA_ASOCIADA('andres.onate@mail.escuela', 'Prueba1', 103, 'HBO MAX'); 
END;

BEGIN
    PC_PLATAFORMAS.DE_CUENTA_ASOCIADA('andres.onate@mail.escuela', 'HBO MAX'); 
END;

VARIABLE consult5 REFCURSOR;
EXECUTE :consult5 :=  PC_PLATAFORMAS.CO_PLATAFORMAS();
PRINT :consult5;

VARIABLE consult3 REFCURSOR;
EXECUTE :consult3 :=  PC_PLATAFORMAS.CO_PLATAFORMA_MAS_USADA();
PRINT :consult3;

VARIABLE consult13 REFCURSOR;
EXECUTE :consult13 :=  PC_PLATAFORMAS.CO_PLATAFORMA_MAS_ANUNCIADA();
PRINT :consult13;

--------------------------------------------------------------Regiones----------------------------------------------------
BEGIN
    PC_REGIONES.AD_PAIS('Mexico', 'Sur America'); 
END;

BEGIN
    PC_REGIONES.MO_PAIS('Mexico','Mexico C', 'Sur America'); 
END;

VARIABLE consult4 REFCURSOR;
EXECUTE :consult4 :=  PC_REGIONES.CO_REGIONES();
PRINT :consult4;

VARIABLE consult4 REFCURSOR;
EXECUTE :consult4 :=  PC_REGIONES.CO_PAISES('Sur America');
PRINT :consult4;

---- Idiomas
BEGIN
    PC_IDIOMAS.AD_IDIOMA('Mandarin'); 
END;

BEGIN
    PC_IDIOMAS. MO_IDIOMA('Mandarin', 'Mandarin P'); 
END;

BEGIN
    PC_IDIOMAS.DE_IDIOMA('Mandarin'); 
END;


---- XCRUD
DROP PACKAGE PC_CONTENIDOS
DROP PACKAGE PC_USUARIOS
DROP PACKAGE PC_FUENTES
DROP PACKAGE PC_PUBLICIDADES
DROP PACKAGE PC_CONSULTAS
DROP PACKAGE PC_PLATAFORMAS
DROP PACKAGE PC_REGIONES
DROP PACKAGE PC_IDIOMAS
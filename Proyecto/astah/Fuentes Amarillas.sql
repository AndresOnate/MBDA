-- CRUDE
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
    FUNCTION CO_PLATAFORMAS RETURN SYS_REFCURSOR;
    FUNCTION CO_PLATAFORMA_MAS_USADA RETURN SYS_REFCURSOR;
END PC_PLATAFORMAS;
/  

CREATE OR REPLACE PACKAGE PC_REGIONES IS
    FUNCTION CO_REGIONES RETURN SYS_REFCURSOR;
    FUNCTION CO_PAISES(xregion IN VARCHAR) RETURN SYS_REFCURSOR;
END PC_REGIONES;
/ 

--CRUDI
CREATE OR REPLACE PACKAGE BODY PC_CONSULTAS IS
    PROCEDURE AD_CONSULTA (xfConsulta IN DATE, userId IN NUMBER) IS
    BEGIN
        INSERT INTO consultas (consultId, fConsulta, Usuarios_userId) VALUES ( '', xfConsulta , userId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20017, SQLERRM);
    END;
    
    PROCEDURE AD_REGISTRO (xfRegistro IN DATE, xconsulta IN VARCHAR, consultId IN NUMBER) IS
    BEGIN
        INSERT INTO registros (rId, fRegistro, consulta, Consultas_consultId) values ('', xfRegistro, xconsulta, consultId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20018, SQLERRM);
    END;
    
    PROCEDURE AD_FILTRO (xduracion IN NUMBER, consultId IN NUMBER) IS
    BEGIN
        INSERT INTO filtros (fId, duracion, Consultas_consultId) values ('', xduracion, consultId);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20026, SQLERRM);
    END;    
          
    PROCEDURE AD_ACTOR(xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO actores (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20043, SQLERRM);
    END; 
    
    PROCEDURE AD_DIRECTOR (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO directores (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20044, SQLERRM);
    END;  
    
    PROCEDURE AD_PREMIO (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        INSERT INTO premios (filtros_Id, nombre, id) values (filtroId, xnombre, '');
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20045, SQLERRM);
    END; 
    
    PROCEDURE MO_FILTRO(xduracion IN NUMBER,filtroid IN NUMBER) IS
    BEGIN
        UPDATE filtros SET duracion = xduracion WHERE fId = filtroid;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20046, SQLERRM);
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
END PC_CONSULTAS;
/ 


CREATE OR REPLACE PACKAGE BODY PC_PLATAFORMAS IS
    PROCEDURE AD_PLATAFORMA(xnombre IN VARCHAR, xcFecha IN DATE, terminos IN VARCHAR) IS
    BEGIN
        INSERT INTO plataformas(nombre, cFecha, terminos) values (xnombre, xcFecha,terminos);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20050, SQLERRM);
    END;
    
    PROCEDURE MO_PLATAFORMA(xnombre IN VARCHAR, xterminos IN VARCHAR) IS
    BEGIN
        UPDATE plataformas SET terminos = xterminos WHERE  nombre = xnombre;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20051, SQLERRM);
    END; 
    
    PROCEDURE AD_ANUNCIO(xtitle IN VARCHAR, xurl IN VARCHAR, xplataforma IN VARCHAR) IS
    BEGIN
        INSERT INTO anuncios(anuId, title, url, Plataformas_nombre) values ('', xtitle, xurl, xplataforma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20052, SQLERRM);
    END;
    
    PROCEDURE MO_ANUNCIO(xanuncioId IN NUMBER, xtitle IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        UPDATE anuncios SET title =  xtitle, url = xurl  WHERE anuId = xanuncioId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20053, SQLERRM);
    END; 
    
    PROCEDURE DE_ANUNCIO(xanuncioId IN NUMBER) IS
    BEGIN
        DELETE FROM anuncios WHERE anuId = xanuncioId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20054, SQLERRM);
    END; 
    
    
    PROCEDURE AD_CATEGORIA(xnombre IN VARCHAR, xclasificacion IN VARCHAR, xaño IN DATE, descripcion IN VARCHAR, genero IN VARCHAR, plataforma IN VARCHAR ) IS
    BEGIN
        INSERT INTO categorias(caId, nombre, clasificacion, año, descripcion, genero, Plataformas_nombre) values ('', xnombre, xclasificacion, xaño, descripcion, genero, plataforma);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20055, SQLERRM);
    END;
      
    PROCEDURE MO_CATEGORIA(xcategoriaId IN NUMBER, xdescripcion IN VARCHAR) IS
    BEGIN
        UPDATE categorias SET descripcion = xdescripcion WHERE caId = xcategoriaId;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20056, SQLERRM);
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
            SELECT plataformas.nombre, COUNT(cuentaAsociada.Usuarios_userId) AS Usuarios
            FROM plataformas JOIN cuentaAsociada ON (cuentaAsociada.Plataformas_nombre = plataformas.nombre) 
            GROUP BY plataformas.nombre
            ORDER BY Usuarios DESC;
        RETURN CO_PLATAFORMAS;
    END; 
    
END PC_PLATAFORMAS;
/ 

CREATE OR REPLACE PACKAGE BODY PC_REGIONES IS
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
--CRUDOK

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
    PC_PLATAFORMAS.AD_CATEGORIA('Musical', 'G', '29/09/2006', 'cortan su desarrollo natural con fragmentos musicales', 'Musicales', 'Disney +');
END;

BEGIN
    PC_PLATAFORMAS.MO_CATEGORIA(101,'No especificada');
END;

VARIABLE consult5 REFCURSOR;
EXECUTE :consult5 :=  PC_PLATAFORMAS.CO_PLATAFORMAS();
PRINT :consult5;

VARIABLE consult3 REFCURSOR;
EXECUTE :consult3 :=  PC_PLATAFORMAS.CO_PLATAFORMA_MAS_USADA();
PRINT :consult3;

--------------------------------------------------------------Regiones----------------------------------------------------
VARIABLE consult4 REFCURSOR;
EXECUTE :consult4 :=  PC_REGIONES.CO_REGIONES();
PRINT :consult4;

VARIABLE consult4 REFCURSOR;
EXECUTE :consult4 :=  PC_REGIONES.CO_PAISES('Sur America');
PRINT :consult4;


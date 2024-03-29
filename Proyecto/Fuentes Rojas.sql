-- ActoresE
CREATE OR REPLACE PACKAGE PA_USUARIO IS
    PROCEDURE AD_USUARIOS (xname IN VARCHAR, xfCreacion IN DATE);  
    PROCEDURE AD_CUENTAS (xname IN VARCHAR, xfCreacion IN DATE, xtext IN VARCHAR, xemail IN VARCHAR, xtipo IN VARCHAR, xuserId IN NUMBER, xregion IN VARCHAR);
    PROCEDURE MO_CUENTAS (xname IN VARCHAR, xtext IN VARCHAR, xemail IN VARCHAR); 
    PROCEDURE DE_CUENTAS (xname IN VARCHAR, xemail IN VARCHAR, xregion IN VARCHAR); 
    PROCEDURE AD_FEEDBACKS (xcomentario IN VARCHAR, xscore IN NUMBER, xuserId IN NUMBER, xcId IN NUMBER); 
    PROCEDURE MO_FEEDBACKS (xfId IN NUMBER, xcomentario IN VARCHAR, xscore IN NUMBER);
    PROCEDURE DE_FEEDBACKS (xfId IN NUMBER);
    PROCEDURE AD_CONSULTA (xfConsulta IN DATE, userId IN NUMBER);  
    PROCEDURE AD_REGISTRO (xfRegistro IN DATE, xconsulta IN VARCHAR, consultId IN NUMBER); 
    FUNCTION CO_FILTROS RETURN SYS_REFCURSOR;
END PA_USUARIO;
/


CREATE OR REPLACE PACKAGE PA_USER_EXPERIENCE_A IS
    PROCEDURE AD_FILTRO (xduracion IN NUMBER, consultId IN NUMBER); 
    PROCEDURE AD_ACTOR (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE AD_DIRECTOR (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE AD_PREMIO (xnombre IN VARCHAR, filtroId IN NUMBER); 
    PROCEDURE MO_FILTRO(xduracion IN NUMBER,filtroid IN NUMBER); 
    FUNCTION CO_USERS RETURN SYS_REFCURSOR;
    FUNCTION CO_PREMIUM RETURN SYS_REFCURSOR;
    FUNCTION CO_REGIONES RETURN SYS_REFCURSOR;
    FUNCTION CO_PAISES(xregion IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION CO_CONTENIDO_MAS_BUSCADO RETURN SYS_REFCURSOR;
    FUNCTION CO_CONSULTAS_DE_USUARIO(usuarioId IN NUMBER) RETURN SYS_REFCURSOR;
    PROCEDURE AD_IDIOMA(xIdioma IN VARCHAR);  
    PROCEDURE MO_IDIOMA(xIdioma IN VARCHAR, zIdioma IN VARCHAR ); 
    PROCEDURE DE_IDIOMA(xIdioma IN VARCHAR);  
    PROCEDURE AD_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR);  
    PROCEDURE MO_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR,zIdioma IN VARCHAR); 
    PROCEDURE DE_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR);  
    FUNCTION CO_IDIOMA RETURN SYS_REFCURSOR;
END PA_USER_EXPERIENCE_A;
/


CREATE OR REPLACE PACKAGE PA_PLA_ANALYST IS
    FUNCTION CO_PLATAFORMA_MAS_ANUNCIADA RETURN SYS_REFCURSOR;
    FUNCTION CO_PLATAFORMA_MAS_USADA RETURN SYS_REFCURSOR;
END PA_PLA_ANALYST;
/

CREATE OR REPLACE PACKAGE PA_GERENTE IS
    PROCEDURE AD_PUBLICIDADES (texto IN VARCHAR);
    PROCEDURE MO_PUBLICIDADES (xpId IN NUMBER, xtexto IN VARCHAR);
    PROCEDURE DE_PUBLICIDADES (xpId IN NUMBER, xtexto IN VARCHAR);
END PA_GERENTE;
/

CREATE OR REPLACE PACKAGE PA_AD_CONTENIDOS IS
    PROCEDURE AD_CONTENIDOS (xpublishingDate IN DATE, xcFecha IN DATE, xtitle IN VARCHAR, xsinopsis IN VARCHAR, xconsultId IN NUMBER);  
    PROCEDURE AD_RECONOCIMIENTOS (xrFecha IN DATE, xnombre IN VARCHAR, xdetalles IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_PELICULAS (xduration IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_SERIES (xepisodios IN NUMBER, xdurationP IN NUMBER, xnTemporadas IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER); 
    PROCEDURE AD_FORMATOS (xrAspecto IN VARCHAR, xdefinicion IN NUMBER, xplataformas_nombre IN VARCHAR); 
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR;
    FUNCTION CO_PLATAFORMAS RETURN SYS_REFCURSOR;
    FUNCTION CO_CONTENIDO_GENERAL RETURN SYS_REFCURSOR;
END PA_AD_CONTENIDOS;
/

CREATE OR REPLACE PACKAGE PA_AD_USUARIOS IS
    PROCEDURE AD_RECOMENDACIONES (xtitle IN VARCHAR); 
    PROCEDURE AD_LOGINS (xcorreo IN VARCHAR, xpassword IN VARCHAR, xuserId IN NUMBER, xcuentaId IN NUMBER); 
    PROCEDURE AD_CONTRATOS (xduracion IN NUMBER, xprecio IN NUMBER, xformaPago IN VARCHAR, xestado IN VARCHAR, xcuentaId IN NUMBER); 
    FUNCTION CO_USUARIOS_X_PLATAFORMAS RETURN SYS_REFCURSOR;
END PA_AD_USUARIOS;
/

CREATE OR REPLACE PACKAGE PA_LIDER_WW IS
    PROCEDURE AD_FUENTES (nombre IN VARCHAR, url IN VARCHAR);
    PROCEDURE MO_FUENTES (xnombre IN VARCHAR, xurl IN VARCHAR);
    PROCEDURE DE_FUENTES (xnombre IN VARCHAR, xurl IN VARCHAR);
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR;
END PA_LIDER_WW;
/
CREATE OR REPLACE PACKAGE PA_AD_PLATAFORMAS IS
    PROCEDURE AD_PLATAFORMA(xnombre IN VARCHAR, xcFecha IN DATE, terminos IN VARCHAR);  
    PROCEDURE MO_PLATAFORMA(xnombre IN VARCHAR, xterminos IN VARCHAR); 
    PROCEDURE AD_ANUNCIO(xtitle IN VARCHAR, xurl IN VARCHAR, xplataforma IN VARCHAR);
    PROCEDURE MO_ANUNCIO(xanuncioId IN NUMBER, xtitle IN VARCHAR, xurl IN VARCHAR); 
    PROCEDURE DE_ANUNCIO(xanuncioId IN NUMBER); 
    PROCEDURE AD_CATEGORIA(xnombre IN VARCHAR, xclasificacion IN VARCHAR, xa�o IN DATE, descripcion IN VARCHAR, genero IN VARCHAR, plataforma IN VARCHAR );
    PROCEDURE MO_CATEGORIA(xcategoriaId IN NUMBER, xdescripcion IN VARCHAR); 
    PROCEDURE AD_CLASIFICACION(xContenido IN NUMBER, xClasificacion IN NUMBER); 
    PROCEDURE AD_CUENTA_ASOCIADA(xEmail IN VARCHAR, xnUsuario  IN VARCHAR, xUserId IN NUMBER, xplataforma IN VARCHAR); 
    PROCEDURE DE_CUENTA_ASOCIADA(xEmail IN VARCHAR, xplataforma IN VARCHAR); 
    FUNCTION CO_ANUNCIO(xplataforma IN VARCHAR) RETURN SYS_REFCURSOR; 
END PA_AD_PLATAFORMAS ;
/


--- ActoresI

CREATE OR REPLACE PACKAGE BODY PA_USUARIO IS
    PROCEDURE AD_USUARIOS(xname IN VARCHAR, xfCreacion IN DATE) IS
    BEGIN
        PC_USUARIOS.AD_USUARIOS(xname, xfCreacion);
    END;  
    PROCEDURE AD_CUENTAS(xname IN VARCHAR, xfCreacion IN DATE, xtext IN VARCHAR, xemail IN VARCHAR, xtipo IN VARCHAR, xuserId IN NUMBER, xregion IN VARCHAR) IS
    BEGIN
        PC_USUARIOS.AD_CUENTAS(xname, xfCreacion, xtext, xemail , xtipo , xuserId, xregion );
    END;   
    PROCEDURE AD_FEEDBACKS(xcomentario IN VARCHAR, xscore IN NUMBER, xuserId IN NUMBER, xcId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.AD_FEEDBACKS(xcomentario, xscore, xuserId, xcId);
    END;  
    PROCEDURE AD_CONSULTA(xfConsulta IN DATE, userId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_CONSULTA(xfConsulta, userId);
    END;  
    PROCEDURE AD_REGISTRO (xfRegistro IN DATE, xconsulta IN VARCHAR, consultId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_REGISTRO(xfRegistro, xconsulta, consultId);
    END;
    FUNCTION CO_FILTROS RETURN SYS_REFCURSOR IS CO_FIL SYS_REFCURSOR;
    BEGIN
        CO_FIL := PC_CONSULTAS.CO_FILTROS();
        RETURN CO_FIL;
    END; 
    PROCEDURE MO_FEEDBACKS(xfId IN NUMBER, xcomentario IN VARCHAR, xscore IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.MO_FEEDBACKS(xfId, xcomentario, xscore );
    END; 
    PROCEDURE DE_FEEDBACKS (xfId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.DE_FEEDBACKS(xfId);
    END; 
    PROCEDURE MO_CUENTAS (xname IN VARCHAR, xtext IN VARCHAR, xemail IN VARCHAR) IS
    BEGIN
        PC_USUARIOS.MO_CUENTAS(xname, xtext, xemail);
    END; 
    PROCEDURE DE_CUENTAS (xname IN VARCHAR, xemail IN VARCHAR, xregion IN VARCHAR) IS
    BEGIN
        PC_USUARIOS.DE_CUENTAS(xname, xemail, xregion);
    END; 
END PA_USUARIO;
/
CREATE OR REPLACE PACKAGE BODY PA_USER_EXPERIENCE_A IS
    PROCEDURE AD_FILTRO (xduracion IN NUMBER, consultId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_FILTRO(xduracion, consultId);
    END; 
    PROCEDURE AD_ACTOR (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_ACTOR(xnombre, filtroId);
    END; 
    PROCEDURE AD_DIRECTOR (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_DIRECTOR(xnombre, filtroId);
    END; 
    PROCEDURE AD_PREMIO (xnombre IN VARCHAR, filtroId IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.AD_PREMIO(xnombre, filtroId);
    END;  
    PROCEDURE MO_FILTRO(xduracion IN NUMBER,filtroid IN NUMBER) IS
    BEGIN
        PC_CONSULTAS.MO_FILTRO(xduracion,filtroid);
    END;  
    FUNCTION CO_USERS RETURN SYS_REFCURSOR IS CO_UR SYS_REFCURSOR;
    BEGIN
        CO_UR := PC_USUARIOS.CO_USUARIOS_X_REGION();
        RETURN CO_UR;
    END;
    FUNCTION CO_PREMIUM RETURN SYS_REFCURSOR IS CO_PR SYS_REFCURSOR;
    BEGIN
        CO_PR := PC_USUARIOS.CO_USUARIOS_PREMIUM();
        RETURN CO_PR;
    END;
    FUNCTION CO_REGIONES RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
    BEGIN
        CO_RE := PC_REGIONES.CO_REGIONES();
        RETURN CO_RE;
    END;   
    FUNCTION CO_PAISES(xregion IN VARCHAR) RETURN SYS_REFCURSOR IS CO_PA SYS_REFCURSOR;
    BEGIN
        CO_PA := PC_REGIONES.CO_PAISES(xregion);
        RETURN  CO_PA;
    END; 
    FUNCTION CO_CONTENIDO_MAS_BUSCADO RETURN SYS_REFCURSOR IS CO_CONT SYS_REFCURSOR;
    BEGIN
        CO_CONT := PC_CONSULTAS.CO_CONTENIDO_MAS_BUSCADO();
        RETURN CO_CONT;
    END; 
    FUNCTION CO_CONSULTAS_DE_USUARIO(usuarioId IN NUMBER) RETURN SYS_REFCURSOR IS CO_CONT_USER SYS_REFCURSOR;
    BEGIN
        CO_CONT_USER := PC_CONSULTAS.CO_CONSULTAS_DE_USUARIO(usuarioId);
        RETURN CO_CONT_USER;
    END;   
        PROCEDURE AD_IDIOMA(xIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.AD_IDIOMA(xIdioma);
    END;   
    PROCEDURE MO_IDIOMA(xIdioma IN VARCHAR, zIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.MO_IDIOMA(xIdioma,zIdioma);
    END;    
    PROCEDURE DE_IDIOMA(xIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.DE_IDIOMA(xIdioma);
    END;
    PROCEDURE AD_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.AD_CUENTA_X_IDIOMA(xCuentaId, xIdioma);
    END;
    PROCEDURE MO_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR,zIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.MO_CUENTA_X_IDIOMA(xCuentaId, xIdioma,zIdioma);
    END;
    PROCEDURE DE_CUENTA_X_IDIOMA(xCuentaId IN VARCHAR, xIdioma IN VARCHAR) IS
    BEGIN
        PC_IDIOMAS.DE_CUENTA_X_IDIOMA(xCuentaId, xIdioma);
    END;
    FUNCTION CO_IDIOMA RETURN SYS_REFCURSOR IS CO_ID SYS_REFCURSOR;
    BEGIN
       CO_ID := PC_IDIOMAS.CO_IDIOMA();
        RETURN CO_ID;
    END;  
END PA_USER_EXPERIENCE_A;
/
CREATE OR REPLACE PACKAGE BODY PA_PLA_ANALYST IS
    FUNCTION CO_PLATAFORMA_MAS_ANUNCIADA RETURN SYS_REFCURSOR IS CO_PLATA SYS_REFCURSOR;
    BEGIN
         CO_PLATA := PC_PLATAFORMAS.CO_PLATAFORMA_MAS_ANUNCIADA();
         RETURN CO_PLATA;
    END; 
    FUNCTION CO_PLATAFORMA_MAS_USADA RETURN SYS_REFCURSOR IS CO_PLATAFORMAS SYS_REFCURSOR;
    BEGIN
         CO_PLATAFORMAS  := PC_PLATAFORMAS.CO_PLATAFORMA_MAS_USADA();
         RETURN CO_PLATAFORMAS ;
    END; 
END PA_PLA_ANALYST;
/

CREATE OR REPLACE PACKAGE BODY PA_GERENTE IS
    PROCEDURE AD_PUBLICIDADES (texto IN VARCHAR) IS
    BEGIN
        PC_PUBLICIDADES.AD_PUBLICIDADES(texto);
    END;
    PROCEDURE MO_PUBLICIDADES(xpId IN NUMBER, xtexto IN VARCHAR) IS
    BEGIN
        PC_PUBLICIDADES.MO_PUBLICIDADES(xpId, xtexto);
    END; 
    PROCEDURE DE_PUBLICIDADES(xpId IN NUMBER, xtexto IN VARCHAR) IS
    BEGIN
        PC_PUBLICIDADES.DE_PUBLICIDADES(xpId ,xtexto);
    END; 
END PA_GERENTE;
/
CREATE OR REPLACE PACKAGE BODY PA_AD_CONTENIDOS IS
    PROCEDURE AD_CONTENIDOS (xpublishingDate IN DATE, xcFecha IN DATE, xtitle IN VARCHAR, xsinopsis IN VARCHAR, xconsultId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.AD_CONTENIDOS(xpublishingDate, xcFecha, xtitle, xsinopsis, xconsultId);
    END;
    PROCEDURE AD_RECONOCIMIENTOS (xrFecha IN DATE, xnombre IN VARCHAR, xdetalles IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.AD_RECONOCIMIENTOS(xrFecha, xnombre, xdetalles, xcId);
    END;
    PROCEDURE AD_PELICULAS (xduration IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.AD_PELICULAS(xduration, xreparto, xcId);
    END;
    PROCEDURE AD_SERIES (xepisodios IN NUMBER, xdurationP IN NUMBER, xnTemporadas IN NUMBER, xreparto IN VARCHAR, xcId IN NUMBER) IS
    BEGIN
        PC_CONTENIDOS.AD_SERIES(xepisodios, xdurationP, xnTemporadas, xreparto, xcId);
    END;
    PROCEDURE AD_FORMATOS (xrAspecto IN VARCHAR, xdefinicion IN NUMBER, xplataformas_nombre IN VARCHAR) IS
    BEGIN
        PC_CONTENIDOS.AD_FORMATOS(xrAspecto, xdefinicion ,xplataformas_nombre);
    END;
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR IS CO_SRCS SYS_REFCURSOR;
    BEGIN
        CO_SRCS := PC_FUENTES.CO_FUENTES();
        RETURN CO_SRCS;
    END; 
    FUNCTION CO_PLATAFORMAS RETURN SYS_REFCURSOR IS CO_PLAT SYS_REFCURSOR;
    BEGIN
        CO_PLAT := PC_PLATAFORMAS.CO_PLATAFORMAS();
        RETURN CO_PLAT ;
    END; 
    FUNCTION CO_CONTENIDO_GENERAL RETURN SYS_REFCURSOR IS CO_GEN_CONT SYS_REFCURSOR;
    BEGIN
        CO_GEN_CONT := PC_CONTENIDOS.CO_CONTENIDO_GENERAL();
        RETURN CO_GEN_CONT;
    END; 
END PA_AD_CONTENIDOS;
/
CREATE OR REPLACE PACKAGE BODY PA_AD_USUARIOS IS
    PROCEDURE AD_RECOMENDACIONES (xtitle IN VARCHAR) IS
    BEGIN
        PC_USUARIOS.AD_RECOMENDACIONES(xtitle) ;
    END;
    PROCEDURE AD_LOGINS (xcorreo IN VARCHAR, xpassword IN VARCHAR, xuserId IN NUMBER, xcuentaId IN NUMBER) IS 
    BEGIN
        PC_USUARIOS.AD_LOGINS(xcorreo, xpassword , xuserId , xcuentaId);
    END;
    PROCEDURE AD_CONTRATOS (xduracion IN NUMBER, xprecio IN NUMBER, xformaPago IN VARCHAR, xestado IN VARCHAR, xcuentaId IN NUMBER) IS
    BEGIN
        PC_USUARIOS.AD_CONTRATOS(xduracion, xprecio, xformaPago, xestado, xcuentaId);
    END;
    FUNCTION CO_USUARIOS_X_PLATAFORMAS RETURN SYS_REFCURSOR IS CO_USR_PLAT SYS_REFCURSOR;
    BEGIN
        CO_USR_PLAT := PC_USUARIOS.CO_USUARIOS_X_PLATAFORMAS();
        RETURN CO_USR_PLAT;
    END; 
END PA_AD_USUARIOS;
/
CREATE OR REPLACE PACKAGE BODY PA_LIDER_WW  IS
    PROCEDURE AD_FUENTES (nombre IN VARCHAR, url IN VARCHAR) IS
    BEGIN
        PC_FUENTES.AD_FUENTES(nombre, url);
    END;
    PROCEDURE MO_FUENTES(xnombre IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        PC_FUENTES.MO_FUENTES(xnombre,xurl);
    END; 
    PROCEDURE DE_FUENTES(xnombre IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        PC_FUENTES.DE_FUENTES(xnombre,xurl);
    END; 
    FUNCTION CO_FUENTES RETURN SYS_REFCURSOR IS CO_SRCS SYS_REFCURSOR;
    BEGIN
        CO_SRCS := PC_FUENTES.CO_FUENTES();
        RETURN CO_SRCS;
    END; 
END PA_LIDER_WW;
/
CREATE OR REPLACE PACKAGE BODY PA_AD_PLATAFORMAS  IS
    PROCEDURE AD_PLATAFORMA(xnombre IN VARCHAR, xcFecha IN DATE, terminos IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.AD_PLATAFORMA(xnombre, xcFecha, terminos);
    END;
    PROCEDURE MO_PLATAFORMA(xnombre IN VARCHAR, xterminos IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.MO_PLATAFORMA(xnombre, xterminos);
    END;
    PROCEDURE AD_ANUNCIO(xtitle IN VARCHAR, xurl IN VARCHAR, xplataforma IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.AD_ANUNCIO(xtitle, xurl, xplataforma);
    END;
    PROCEDURE MO_ANUNCIO(xanuncioId IN NUMBER, xtitle IN VARCHAR, xurl IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.MO_ANUNCIO(xanuncioId, xtitle, xurl);
    END;
    PROCEDURE DE_ANUNCIO(xanuncioId IN NUMBER) IS
    BEGIN
        PC_PLATAFORMAS.DE_ANUNCIO(xanuncioId);
    END;
    PROCEDURE AD_CATEGORIA(xnombre IN VARCHAR, xclasificacion IN VARCHAR, xa�o IN DATE, descripcion IN VARCHAR, genero IN VARCHAR, plataforma IN VARCHAR ) IS
    BEGIN
        PC_PLATAFORMAS.AD_CATEGORIA(xnombre, xclasificacion, xa�o, descripcion, genero, plataforma);
    END;
    PROCEDURE MO_CATEGORIA(xcategoriaId IN NUMBER, xdescripcion IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.MO_CATEGORIA(xcategoriaId, xdescripcion) ;
    END;
    PROCEDURE AD_CLASIFICACION(xContenido IN NUMBER, xClasificacion IN NUMBER) IS
    BEGIN
        PC_PLATAFORMAS.AD_CLASIFICACION(xContenido, xClasificacion);
    END;  
    PROCEDURE AD_CUENTA_ASOCIADA(xEmail IN VARCHAR, xnUsuario  IN VARCHAR, xUserId IN NUMBER, xplataforma IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.AD_CUENTA_ASOCIADA(xEmail, xnUsuario, xUserId, xplataforma);
    END;  
    
    PROCEDURE DE_CUENTA_ASOCIADA(xEmail IN VARCHAR, xplataforma IN VARCHAR) IS
    BEGIN
        PC_PLATAFORMAS.DE_CUENTA_ASOCIADA(xEmail, xplataforma);
    END;
    FUNCTION CO_ANUNCIO(xPlataforma IN VARCHAR) RETURN SYS_REFCURSOR IS CO_ANU SYS_REFCURSOR;
    BEGIN
       CO_ANU := PC_PLATAFORMAS.CO_ANUNCIO(xPlataforma);
        RETURN CO_ANU;
    END; 
END PA_AD_PLATAFORMAS;
/

----------
--Seguridad
CREATE ROLE USUARIO2;
GRANT EXECUTE ON  PA_USUARIO TO USUARIO2;

CREATE ROLE USER_EXPERIENCE_A;
GRANT EXECUTE ON  PA_USER_EXPERIENCE_A TO USER_EXPERIENCE_A;

CREATE ROLE PLATAFORM_ANALYST;
GRANT EXECUTE ON  PA_PLA_ANALYST TO PLATAFORM_ANALYST;

CREATE ROLE WGERENTE;
GRANT EXECUTE ON  PA_GERENTE TO WGERENTE;

CREATE ROLE AD_CONTENIDOS ;
GRANT EXECUTE ON PA_AD_CONTENIDOS  TO AD_CONTENIDOS;

CREATE ROLE AD_USUARIOS;
GRANT EXECUTE ON PA_AD_USUARIOS TO AD_USUARIOS;

CREATE ROLE LIDER_WW;
GRANT EXECUTE ON PA_LIDER_WW TO LIDER_WW;

CREATE ROLE AD_PLATAFORMAS;
GRANT EXECUTE ON PA_AD_PLATAFORMAS TO AD_PLATAFORMAS;


--XSeguridad

DROP PACKAGE PA_USUARIO;
DROP PACKAGE PA_USER_EXPERIENCE_A;
DROP PACKAGE PA_PLA_ANALYST;
DROP PACKAGE PA_GERENTE;
DROP PACKAGE PA_AD_CONTENIDOS;
DROP PACKAGE PA_AD_USUARIOS;
DROP PACKAGE PA_LIDER_WW;

DROP ROLE USUARIO2;
DROP ROLE USER_EXPERIENCE_A;
DROP ROLE PLATAFORM_ANALYST;
DROP ROLE WGERENTE;
DROP ROLE AD_CONTENIDOS;
DROP ROLE AD_USUARIOS;
DROP ROLE LIDER_WW;
DROP ROLE AD_PLATAFORMAS;
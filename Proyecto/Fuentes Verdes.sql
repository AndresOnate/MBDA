---- Restricciones Procedimentales

--- Tuplas

---cuentas
ALTER TABLE cuentas ADD (
    CONSTRAINT CK_CUENTAS_DATE CHECK(fCreacion> TO_DATE ('19/03/2022','DD/MM/YYYY')),
    CONSTRAINT CK_CUENTAS_EMAIL CHECK(email LIKE('%@%.%')),
    CONSTRAINT CK_CUENTAS_EMAIL_NOT CHECK(email NOT LIKE('%@%@%')),
    CONSTRAINT CK_CUENTAS_TIPO CHECK(tipo LIKE('Premium') OR tipo LIKE('No premium'))
);


---contratos 
ALTER TABLE contratos ADD (
    CONSTRAINT CK_CONTRATOS_DURACION CHECK(duracion < 13),
    CONSTRAINT CK_CONTRATOS_ESTADO CHECK(estado LIKE('Activo') OR estado LIKE('Inactivo'))
);


---registros
ALTER TABLE registros ADD(
    CONSTRAINT CK_REGISTRO_DATE CHECK(fRegistro> TO_DATE ('19/03/2022','DD/MM/YYYY')),
    CONSTRAINT CK_REGISTRO_CONSULTA CHECK(consulta LIKE('% %'))
);


---contenidos
ALTER TABLE contenidos ADD (
    CONSTRAINT CK_CONTENIDOS_PDATE CHECK(publishingDate > TO_DATE ('01/01/1994','DD/MM/YYYY')),
    CONSTRAINT CK_CONTENIDOS_CDATE CHECK(cFecha > TO_DATE ('22/03/1895','DD/MM/YYYY'))    
);



---series
ALTER TABLE series ADD (
    CONSTRAINT CK_SERIES_EPISODIOS_MIN CHECK(episodios > 0),
    CONSTRAINT CK_SERIES_DURACIONP_MIN CHECK(durationP > 0),
    CONSTRAINT CK_SERIES_TEMPORADAS_MIN CHECK(nTemporadas > 0),
    CONSTRAINT CK_SERIES_EPISODIOS_MAX CHECK(episodios < 15000),
    CONSTRAINT CK_SERIES_TEMPORADAS_MAX CHECK(nTemporadas < 60)
);


---categorias
ALTER TABLE categorias ADD(
    CONSTRAINT CK_CATEGORIAS_AÑO CHECK(año > TO_DATE ('22/03/1895','DD/MM/YYYY')),
    CONSTRAINT CK_CATEGORIAS_CLASIFICACION CHECK(clasificacion IN('G', 'PG', 'PG-13', 'R', 'NC-17'))
);




--- Acciones de referencia



-- Es posible eliminar una cuenta

--cuentasXidiomas
ALTER TABLE cuentasXidiomas ADD CONSTRAINT FK_CUENTASXIDIOMAS_CUENTAS FOREIGN KEY(Cuentas_Id) REFERENCES cuentas(cuentaId) ON DELETE CASCADE;

--contratos 
ALTER TABLE contratos ADD CONSTRAINT FK_CONTRATOS_CUENTAS FOREIGN KEY(Cuentas_cuentaId) REFERENCES cuentas(cuentaId) ON DELETE CASCADE;

--logins
ALTER TABLE logins ADD CONSTRAINT FK_LOGINS_CUENTAS FOREIGN KEY(Cuentas_cuentaId) REFERENCES cuentas(cuentaId) ON DELETE CASCADE;



--- Disparadores

---usuarios

CREATE SEQUENCE userId_sequence
    MINVALUE 100
    START WITH 100
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_USUARIOS_BI
    BEFORE INSERT ON usuarios
    FOR EACH ROW
    BEGIN
        SELECT userId_sequence.nextval INTO :NEW.userId FROM DUAL;
        :NEW.fCreacion := CURRENT_DATE;
END;
/

 
---recomendaciones

CREATE SEQUENCE recomendacionesId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_RECOMENDACIONES_BI
    BEFORE INSERT ON recomendaciones
    FOR EACH ROW
    BEGIN
        SELECT recomendacionesId_sequence.nextval INTO :NEW.rId FROM DUAL;
END;
/ 

---logins

CREATE SEQUENCE loginId_sequence
    MINVALUE 10
    START WITH 10
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_LOGIN_BI
    BEFORE INSERT ON logins
    FOR EACH ROW
    BEGIN
        SELECT loginId_sequence.nextval INTO :NEW.loginId FROM DUAL;
END;
/ 

 
---cuentas

CREATE SEQUENCE cuentasId_sequence
    MINVALUE 10
    START WITH 10
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_CUENTAS_BI
    BEFORE INSERT ON cuentas
    FOR EACH ROW
    BEGIN
        SELECT cuentasId_sequence.nextval INTO :NEW.cuentaId FROM DUAL;
        :NEW.fCreacion := CURRENT_DATE;
END;
/ 

CREATE OR REPLACE TRIGGER TR_CUENTAS_BU
    BEFORE UPDATE OF email ON cuentas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20001, 'No es posible actualizar el correo electronico a la cuenta');
END;
/ 


---contratos 

CREATE SEQUENCE contratosId_sequence
    MINVALUE 1000
    START WITH 1000
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_CONTRATOS_BI
    BEFORE INSERT ON contratos
    FOR EACH ROW
    BEGIN
        SELECT contratosId_sequence.nextval INTO :NEW.cId FROM DUAL;
        IF :NEW.precio = 0 THEN
        :NEW.duracion := 1;
        END IF;
END;
/ 

CREATE OR REPLACE TRIGGER TR_CONTRATOS_BD
    BEFORE DELETE ON contratos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20002, 'No se puede eliminar el contrato');
END;
/ 

---feedbacks

CREATE SEQUENCE fId_sequence
    MINVALUE 500
    START WITH 500
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_FEEDBACKS_BI
    BEFORE INSERT ON feedbacks
    FOR EACH ROW
    BEGIN
        SELECT fId_sequence.nextval INTO :NEW.fId FROM DUAL;
END;
/ 

---consultas

CREATE SEQUENCE consultasId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_CONSULTAS_BI
    BEFORE INSERT ON consultas
    FOR EACH ROW
    BEGIN
        SELECT consultasId_sequence.nextval INTO :NEW.consultId FROM DUAL;
        :NEW.fConsulta := CURRENT_DATE;
END;
/ 

 
---filtros
CREATE SEQUENCE filtrosId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_FILTROS_BI
    BEFORE INSERT ON filtros
    FOR EACH ROW
    BEGIN
        SELECT filtrosId_sequence.nextval INTO :NEW.fId FROM DUAL;
END;
/ 

---registros

CREATE SEQUENCE regId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_REGISTROS_BI
    BEFORE INSERT ON registros
    FOR EACH ROW
    BEGIN
        SELECT regId_sequence.nextval INTO :NEW.rId FROM DUAL;
        :NEW.fRegistro := CURRENT_DATE;
END;
/ 

CREATE OR REPLACE TRIGGER TR_REGISTROS_BU
    BEFORE UPDATE OF consulta ON registros
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20003, 'No es posible actualizar la consulta');
END;
/ 

---contenidos

CREATE SEQUENCE contenidosId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_CONTENIDOS_BI
    BEFORE INSERT ON contenidos
    FOR EACH ROW
    BEGIN
        SELECT contenidosId_sequence.nextval INTO :NEW.cId FROM DUAL;
END;
/ 


---anuncios

CREATE SEQUENCE anunciosId_sequence
    MINVALUE 5000
    START WITH 5000
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_ANUNCIOS_BI
    BEFORE INSERT ON anuncios
    FOR EACH ROW
    BEGIN
        SELECT anunciosId_sequence.nextval INTO :NEW.anuId FROM DUAL;
END;
/ 

---reconocimientos

CREATE SEQUENCE reconocimientosId_sequence
    MINVALUE 1000
    START WITH 1000
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_RECONOCIMIENTOS_BI
    BEFORE INSERT ON reconocimientos
    FOR EACH ROW
    BEGIN
        SELECT reconocimientosId_sequence.nextval INTO :NEW.rId FROM DUAL;
END;
/ 


---formatos

CREATE SEQUENCE formatosId_sequence
    MINVALUE 10000
    START WITH 10000
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_FORMATOS_BI
    BEFORE INSERT ON formatos
    FOR EACH ROW
    BEGIN
        SELECT formatosId_sequence.nextval INTO :NEW.fId FROM DUAL;
END;
/ 


---categorias

CREATE SEQUENCE categoriasId_sequence
    MINVALUE 100
    START WITH 100
    MAXVALUE 99999;

CREATE OR REPLACE TRIGGER TR_CATEGORIAS_BI
    BEFORE INSERT ON categorias
    FOR EACH ROW
    BEGIN
        SELECT categoriasId_sequence.nextval INTO :NEW.caId FROM DUAL;
END;
/ 

---publicidades

CREATE SEQUENCE publicidadesId_sequence
    MINVALUE 1
    START WITH 1
    MAXVALUE 99999;

    CREATE OR REPLACE TRIGGER TR_PUBLICIDADES_BI
    BEFORE INSERT ON publicidades
    FOR EACH ROW
    BEGIN
        SELECT publicidadesId_sequence.nextval INTO :NEW.pId FROM DUAL;
END;
/ 

---fuentes

CREATE SEQUENCE fuentesId_sequence
    MINVALUE 10
    START WITH 10
    MAXVALUE 99999;

    CREATE OR REPLACE TRIGGER TR_FUENTES_BI
    BEFORE INSERT ON fuentes
    FOR EACH ROW
    BEGIN
        SELECT fuentesId_sequence.nextval INTO :NEW.fuenteId FROM DUAL;
END;
/ 


---actores

CREATE SEQUENCE actoresId_sequence
    MINVALUE 100
    START WITH 100
    MAXVALUE 99999;

    CREATE OR REPLACE TRIGGER TR_ACTORES_BI
    BEFORE INSERT ON actores
    FOR EACH ROW
    BEGIN
        SELECT actoresId_sequence.nextval INTO :NEW.id FROM DUAL;
END;
/ 

---directores

CREATE SEQUENCE directoresId_sequence
    MINVALUE 100
    START WITH 100
    MAXVALUE 99999;

    CREATE OR REPLACE TRIGGER TR_DIRECTORES_BI
    BEFORE INSERT ON directores
    FOR EACH ROW
    BEGIN
        SELECT directoresId_sequence.nextval INTO :NEW.id FROM DUAL;
END;
/ 

---premios
CREATE SEQUENCE premiosId_sequence
    MINVALUE 100
    START WITH 100
    MAXVALUE 99999;

    CREATE OR REPLACE TRIGGER TR_PREMIOS_BI
    BEFORE INSERT ON premios
    FOR EACH ROW
    BEGIN
        SELECT premiosId_sequence.nextval INTO :NEW.id FROM DUAL;
END;
/ 

-- XDisparadores
DROP SEQUENCE userId_sequence;
DROP SEQUENCE recomendacionesId_sequence;
DROP SEQUENCE loginId_sequence;
DROP SEQUENCE cuentasId_sequence;
DROP SEQUENCE contratosId_sequence;
DROP SEQUENCE fId_sequence;
DROP SEQUENCE consultasId_sequence;
DROP SEQUENCE filtrosId_sequence;
DROP SEQUENCE regId_sequence;
DROP SEQUENCE contenidosId_sequence;
DROP SEQUENCE anunciosId_sequence;
DROP SEQUENCE reconocimientosId_sequence;
DROP SEQUENCE formatosId_sequence;
DROP SEQUENCE categoriasId_sequence;
DROP SEQUENCE publicidadesId_sequence;
DROP SEQUENCE fuentesId_sequence;
DROP SEQUENCE  actoresId_sequence;
DROP SEQUENCE directoresId_sequence;
DROP SEQUENCE premiosId_sequence;

DROP TRIGGER TR_PREMIOS_BI;
DROP TRIGGER TR_DIRECTORES_BI;
DROP TRIGGER TR_ACTORES_BI;
DROP TRIGGER TR_FUENTES_BI;
DROP TRIGGER TR_PUBLICIDADES_BI;
DROP TRIGGER TR_CATEGORIAS_BI;
DROP TRIGGER TR_FORMATOS_BI;
DROP TRIGGER TR_RECONOCIMIENTOS_BI;
DROP TRIGGER TR_ANUNCIOS_BI;
DROP TRIGGER TR_CONTENIDOS_BI;
DROP TRIGGER TR_REGISTROS_BI;
DROP TRIGGER TR_REGISTROS_BU;
DROP TRIGGER TR_FILTROS_BI;
DROP TRIGGER TR_CONSULTAS_BI;
DROP TRIGGER TR_FEEDBACKS_BI;
DROP TRIGGER TR_CONTRATOS_BD;
DROP TRIGGER TR_CUENTAS_BU;
DROP TRIGGER TR_CUENTAS_BI;
DROP TRIGGER TR_LOGIN_BI;
DROP TRIGGER TR_RECOMENDACIONES_BI;
DROP TRIGGER TR_USUARIOS_BI;

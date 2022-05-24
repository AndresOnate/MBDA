--- El número se genera automáticamente (el máximo número actual más uno)
CREATE SEQUENCE band_sequence
    MINVALUE 1
    START WITH 1;
    
CREATE OR REPLACE TRIGGER TR_BAND_NO
    BEFORE INSERT ON band
    FOR EACH ROW
BEGIN
  SELECT band_sequence.nextval
  INTO :new.band_no
  FROM dual;
END;

--DROP SEQUENCE  band_sequence;
--DROP TRIGGER  TR_BAND_NO;

--- La fecha de creación corresponde al momento en que fue adicionada
create or replace trigger TR_BAND_DATE 
 BEFORE insert on band
 for each row  
 begin
   :NEW.b_date := CURRENT_DATE; 
end;
--DROP TRIGGER TR_BAND_DATE;

---Si no se indica el tipo de banda, se asume que es de rock

CREATE OR REPLACE TRIGGER TR_BAND_TYPE
    BEFORE INSERT ON band
    FOR EACH ROW
BEGIN
  IF :NEW.band_type IS NULL THEN
    :NEW.band_type := 'rock';
    END IF;
END;

--INSERT INTO band VALUES('','c',8,null,'',7);


--El único dato base de la banda a modificar es el tipo de banda


CREATE OR REPLACE TRIGGER TR_BAND_UP
    BEFORE UPDATE ON band
    FOR EACH ROW
BEGIN
    :NEW.band_no := :OLD.band_no;
    :NEW.band_name := :OLD.band_name;
    :NEW.band_home := :OLD.band_home;
    :NEW.band_type := :NEW.band_type;
    :NEW.b_date := :OLD.b_date;
    :NEW.band_contact := :OLD.band_contact;
END;


--update band set band_type='jazz';
    

--Se pueden adicionar interpretes a la banda pero, el contacto de la banda no puede aparecer como inteprete.


CREATE OR REPLACE TRIGGER TR_PLAYS_IN
    BEFORE INSERT ON plays_in
    FOR EACH ROW
BEGIN
    IF :NEW.player IN (SELECT band_contact FROM band WHERE band_no = :NEW.band_id) THEN
        RAISE_APPLICATION_ERROR(-20344,'El interprete esta asignado como contacto de la banda');
    END IF;
END;


--No se pueden modificar ni eliminar los interpretes de la banda
CREATE OR REPLACE TRIGGER TR_PLAYS_IN_UP
    BEFORE UPDATE ON plays_in
    FOR EACH ROW
BEGIN
    :NEW.player := :OLD.player;
    :NEW.band_id := :OLD.band_id;
END;


CREATE OR REPLACE TRIGGER TR_PLAYS_IN_UP_DELETE
    BEFORE DELETE ON plays_in
    FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20345,'No se pueden modificar ni eliminar los interpretes de la banda');
END;



--- CRUDE
CREATE OR REPLACE PACKAGE PC_BANDS IS
    FUNCTION ad(name IN VARCHAR, home IN NUMBER, type IN VARCHAR, contact IN NUMBER) RETURN NUMBER;
    PROCEDURE up_type(band IN NUMBER, type IN VARCHAR);
    PROCEDURE up_ad_player(band IN NUMBER, player IN NUMBER);
    FUNCTION co_band(band IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION co_players(band IN NUMBER) RETURN SYS_REFCURSOR;
    PROCEDURE de(band IN NUMBER);
    FUNCTION co_byComposer(composer IN NUMBER) RETURN SYS_REFCURSOR;
    --FUNCTION co_theBigOnes RETURN SYS_REFCURSOR; 


END PC_BANDS;
/
--- CRUDI

CREATE OR REPLACE PACKAGE BODY PC_BANDS IS

    FUNCTION ad(name IN VARCHAR, home IN NUMBER, type IN VARCHAR, contact IN NUMBER)
       RETURN NUMBER IS
       identificador NUMBER;
    BEGIN
       INSERT INTO band VALUES ('', name, home, type, '', contact);
       SELECT MAX(band_no) INTO identificador FROM band; 
       RETURN identificador;
    END;
    
    PROCEDURE up_type(band IN NUMBER, type IN VARCHAR) IS
    BEGIN
        UPDATE band SET band_type = type WHERE band_no = band;
    END;
    
    PROCEDURE up_ad_player(band IN NUMBER, player IN NUMBER) IS
    BEGIN
        INSERT INTO plays_in VALUES (player,band);
    END;
    
    
    FUNCTION co_band(band IN NUMBER) 
        RETURN SYS_REFCURSOR 
    AS
        b_cursor SYS_REFCURSOR;
    BEGIN
        OPEN b_cursor FOR
            SELECT band.band_no, band.band_name, band.band_home, band.band_type,  band.b_date, band.band_contact, musician.m_name
            FROM band JOIN musician ON(band.band_contact = musician.m_no) 
            WHERE band_no = band;
        RETURN b_cursor;
    END; 
    
    FUNCTION co_players(band IN NUMBER) 
        RETURN SYS_REFCURSOR 
    AS
        b_cursor SYS_REFCURSOR;
    BEGIN
        OPEN b_cursor FOR
            SELECT musician.m_name
            FROM band JOIN plays_in ON(band.band_no = plays_in.band_id) 
                      JOIN performer ON (performer.perf_no = plays_in.player)
                      JOIN musician ON (performer.perf_is = musician.m_no)
            WHERE band_no = band;
        RETURN b_cursor;
    END; 
    
    PROCEDURE de(band IN NUMBER) IS
    BEGIN
        DELETE FROM band WHERE band_no =  band;
    END;
    
    FUNCTION co_byComposer(composer IN NUMBER) 
        RETURN SYS_REFCURSOR 
    AS
        b_cursor SYS_REFCURSOR;
    BEGIN
        OPEN b_cursor FOR
            SELECT band.band_name
            FROM composer JOIN has_composed ON (composer.comp_no = has_composed.cmpr_no)
                          JOIN composition ON (has_composed.cmpn_no = composition.c_no)
                          JOIN performance ON (composition.c_no =  performance.performed)
                          JOIN band ON (performance.gave =  band.band_no)
            WHERE composer.comp_no = composer;
        RETURN b_cursor;
    END; 
    
    /*
    FUNCTION co_theBigOnes
        RETURN SYS_REFCURSOR 
    AS
        b_cursor SYS_REFCURSOR;
    BEGIN
        DECLARE avarage_p INTEGER;
        SELECT AVG(player) INTO avarage_p FROM plays_in GROUP BY(band_id);
        OPEN b_cursor FOR
            SELECT band.band_name, COUNT(plays_in.player)
            FROM band JOIN plays_in ON (band.band_no =  plays_in.band_id)
            GROUP BY plays_in.band_id, band.band_name
            HAVING COUNT(player) > average_p;    
        RETURN b_cursor;
    END; 
    */
                               
END PC_BANDS;


--CRUDOK
-- Agregar banda
DECLARE
    idBand NUMBER;
BEGIN
    idBand := PC_BANDS.ad('Cobra Man', 5, 'rock', 11);
END;

-- Up_type
BEGIN
    pc_bands.up_type(2, 'rock');
END;

-- up_ad_player
BEGIN
    pc_bands.up_ad_player(1, 8);
END;

-- co_band
-- co_players
-- de
-- co_byComposer


------ XCRUD
--DROP PACKAGE PC_BANDS;
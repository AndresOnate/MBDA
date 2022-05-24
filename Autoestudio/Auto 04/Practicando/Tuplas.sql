--El nombre de la banda no debe incluir el tipo de la banda
ALTER TABLE band ADD (
    CONSTRAINT CK_BAND_NAME_TYPE CHECK(band_name NOT LIKE ('%classical%') AND band_name NOT LIKE('%jazz%') AND band_name NOT LIKE('%rock%'))
);
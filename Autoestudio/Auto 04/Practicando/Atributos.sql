---TBandType Cadena(10) s�lo una palabra
ALTER TABLE band ADD (
    CONSTRAINT CK_BAND_BAND_TYPE  CHECK( band_type LIKE('%') AND  band_type NOT LIKE('% %'))
);
--- TBandName Cadena(20) m�nimo una letra
ALTER TABLE band ADD (
    CONSTRAINT CK_BAND_BAND_NAME  CHECK(LENGTH(band_name) > 0)
);

ALTER TABLE band DROP 
    CONSTRAINT CK_BAND_BAND_NAME;
--La banda se puede eliminar en cualquier momento, si no ha participado en conciertos.
ALTER TABLE performance DROP CONSTRAINT FK_PLAY_IN_BAND;
ALTER TABLE performance ADD CONSTRAINT FK_PLAY_IN_BAND FOREIGN KEY (gave) REFERENCES band(band_no);



--- El número se genera automáticamente (el máximo número actual más uno)
DROP SEQUENCE  band_sequence;
DROP TRIGGER  TR_BAND_NO;

--- La fecha de creación corresponde al momento en que fue adicionada
DROP TRIGGER TR_BAND_DATE;

---Si no se indica el tipo de banda, se asume que es de rock
DROP TRIGGER TR_BAND_TYPE;

--El único dato base de la banda a modificar es el tipo de banda
DROP TRIGGER TR_BAND_UP;

--Se pueden adicionar interpretes a la banda pero, el contacto de la banda no puede aparecer como inteprete
DROP TRIGGER TR_PLAYS_IN;

--No se pueden modificar ni eliminar los interpretes de la banda
DROP TRIGGER TR_PLAYS_IN_UP;
DROP TRIGGER TR_PLAYS_IN_UP_DELETE;
GRANT USUARIO2 TO bd1000046164;
GRANT USER_EXPERIENCE_A TO bd1000046164;
GRANT AD_CONTENIDOS  TO bd1000046164;
GRANT AD_USUARIOS TO bd1000046164;


--- Juan es un usuario nuevo de What Whatch?, por lo tanto va realizar todo el proceso de registro en la aplicacion. 
--- Como Juan aun no conoce los beneficios de ser premium en WW empezara con una cuenta basica, pero estamos seguros que no tardara en suscribirse a una cuenta premium

-- 1. Creacion de usuario
EXECUTE pa_usuario.ad_usuarios('Juan Manuel Mendez Lozano', '');

-- 2. Creacion de la cuenta
-- Para crear su cuenta Juan necesita conocer su id de usuario por lo que el administrador de usuarios del equipo de WW le otorgara su id

SELECT userId
FROM usuarios WHERE name = 'Juan Manuel Mendez Lozano';

-- Ahora que conocemos su id podemos continuar con el proceso de crear su cuenta 
EXECUTE pa_usuario.ad_cuentas('Juanito', '', 'Estoy probando WW si me gusta pagare por una suscripcion Premium', 'juan.lozano@gmail..com', 'No premium', , 'Sur America');

-- Ahora Juan puede disfrutar de todo lo que WW tiene para ofrecer


-- Mateo es el encargado de analizar la experiencia de los usuarios en la plataforma para diseñar estrategias que contribuyan al crecimiento de la misma

-- 1. Como pauta inicial Mateo quiere saber en que regiones es mas usada la plataforma 

VARIABLE consultRegions REFCURSOR;
EXECUTE :consultRegions := pa_user_experience_a.co_users();
PRINT :consultRegions;

-- De esto Mateo concluye que la plataforma se encuentra distribuida uniformemente al rededor del mundo, sin embargo cree que deberia invertirse en publicidad para el mercadoa asiatico dado que cuenta con mayor poblacion 

-- 2. Ahora se le solicita evaluar el desempeño de las cuentas premium en base al numero de usuarios que la contratan 

VARIABLE consultPremium REFCURSOR;
EXECUTE :consultPremium := pa_user_experience_a.co_premium();
PRINT :consultPremium;

-- Aproximadamente la mitad de los usuarios de la platforma tienen cuentas premium por lo que el equipo concluye que hay que seguir tomando la misma linea ya que es un buen indicativo del exito de las cuentas premium

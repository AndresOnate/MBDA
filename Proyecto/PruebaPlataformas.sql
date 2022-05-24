GRANT PLATAFORM_ANALYST TO bd1000046471; 
GRANT AD_PLATAFORMAS TO bd1000046471; 

-- Steven D�az es un analista de plataformas de WW y quiere 
-- determinar si los anuncios en las plataformas repercuten en la cantidad 
-- de usuarios registrados en cada una de ellas.

-- Consulta el n�mero de usuarios en WW que contratan cada una de las plataformas.
VARIABLE consult1 REFCURSOR;
EXECUTE :consult1 := PA_PLA_ANALYST.CO_PLATAFORMA_MAS_USADA();
PRINT :consult1;
-- Consulta el n�mero de anuncios generado por cada una de las plataformas.
VARIABLE consult2 REFCURSOR;
EXECUTE :consult2 := PA_PLA_ANALYST.CO_PLATAFORMA_MAS_ANUNCIADA();
PRINT :consult2;

-- DIRECT TV es la plataforma con el menor n�mero de anuncios registrados, esto ser� informado al administrador de plataformas.

-- Andr�s Gonz�lez es un administrador de platafromas en WW, el analista le pide agregar un anuncio a DIRECT TV
EXECUTE PA_AD_PLATAFORMAS.AD_ANUNCIO('Win Sport Sin Costo x 6 meses', 'www.directv.com.co','DIRECT TV');

-- El administrador consulta las anuncios
VARIABLE consult3 REFCURSOR;
EXECUTE :consult3 := PA_AD_PLATAFORMAS.CO_ANUNCIO('DIRECT TV');
PRINT :consult3;

-- Se le pide al administrador de agregue una plataforma a la base de datos
BEGIN
    PA_AD_PLATAFORMAS.AD_PLATAFORMA('Star+', '23/01/2021', 'Combo+ es diversi�n para toda la familia');
END;
-- Actualizar los t�rminos y condiciones de Netflix
BEGIN
    PA_AD_PLATAFORMAS.MO_PLATAFORMA('Netflix', 'we grant you a limited, non-exclusive, non-transferable, license to access the Netflix');
END;
-- Agregar un anucio a Star +
BEGIN
    PA_AD_PLATAFORMAS.AD_ANUNCIO('Ahorra con Combo+', 'www.starplus.com', 'Star+');
END;

-- Agrega la categoria Musical a Categorias
BEGIN
    PA_AD_PLATAFORMAS.AD_CATEGORIA('Musicales D', 'G', '29/09/2006', 'cortan su desarrollo natural con fragmentos musicales', 'Musicales', 'Disney +');
END;

-- Adem�s, se le informa que un usuario se registr� a HBO MAX y debe ingresar esta informaci�n.
BEGIN
    PA_AD_PLATAFORMAS.AD_CUENTA_ASOCIADA('andres.onate@mail.escuela', 'Andres O�ate', 103, 'HBO MAX'); 
END;
-- Cuando el usuario termine con su suscripci�n deber eliminar la cuenta asociada.
BEGIN
    PA_AD_PLATAFORMAS.DE_CUENTA_ASOCIADA('andres.onate@mail.escuela', 'HBO MAX'); 
END;



SELECT contenidos.cId, contenidos.title
FROM clasificaciones JOIN contenidos ON(contenidos.cId = clasificaciones.Contenidos_cId)
               JOIN categorias ON(clasificaciones.Categorias_caId = categorias.caId)
               JOIN plataformas ON (categorias.plataformas_nombre = plataformas.nombre)
WHERE plataformas.nombre = 'HBO MAX' AND categorias.nombre = 'Horror';


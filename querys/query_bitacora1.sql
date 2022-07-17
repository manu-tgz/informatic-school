CREATE FUNCTION bitacora_computadora_hora("computadora_input" integer, "local_input" integer)
    RETURNS TABLE(id_docente integer, hora time) 
    LANGUAGE 'sql'

AS $BODY$
SELECT
    id_docente, hora
FROM
    bitacora_computadoras
WHERE
    bitacora_computadoras.id_computadora = computadora_input
    and bitacora_computadoras.id_local = local_input          
$BODY$;
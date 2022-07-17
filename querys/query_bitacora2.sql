CREATE FUNCTION bitacora_local_hora("local_input" integer)     
    RETURNS TABLE(id_docente integer, hora time) 
    LANGUAGE 'sql'

AS $BODY$
SELECT
    id_docente, hora
FROM
    bitacora_locales
WHERE
    bitacora_locales.id_local = local_input          
$BODY$;
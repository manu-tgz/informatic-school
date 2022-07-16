-- Actualizar cantidad de computadoras
CREATE FUNCTION update_cant_computadoras("id_local" integer)        
    RETURNS void 
    LANGUAGE 'sql'

AS $BODY$
UPDATE locales 
SET cant_computadoras = cant_computadoras +1 
WHERE locales.id = id_local
$BODY$;
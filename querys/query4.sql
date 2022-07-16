-- Cantidad de computadoras libres

CREATE FUNCTION cant_computadoras_por_estado("estado_input" estado)         
    RETURNS int 
    LANGUAGE 'sql'

AS $BODY$
SELECT Count(id)
FROM computadoras
WHERE estado = estado_input      
$BODY$;
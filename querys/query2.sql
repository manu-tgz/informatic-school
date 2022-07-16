-- Obtener los nombres y numero de los estudiantess de quinto año
CREATE FUNCTION estudiantes_por_año("año_input" integer)
    RETURNS TABLE(id_docente integer, nombre character varying) 
    LANGUAGE 'sql'

AS $BODY$
SELECT id_docente, nombre
FROM estudiantes, docentes
WHERE año =  año_input AND  estudiantes.id_docente = docentes.numero          
$BODY$; 
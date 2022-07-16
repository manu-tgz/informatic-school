--Cuando agregas una computadora a la lista de un locales se agregue +1 a la cantidad
CREATE FUNCTION update_cant_computadoras()                          
    RETURNS trigger
    LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
UPDATE locales 
SET cant_computadoras = cant_computadoras +1 
WHERE locales.id = NEW.id_local;
RETURN NEW;
END
$BODY$;


CREATE TRIGGER update_cant
AFTER INSERT
ON computadoras
FOR EACH ROW
EXECUTE PROCEDURE update_cant_computadoras()
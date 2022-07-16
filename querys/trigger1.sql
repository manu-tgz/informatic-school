-- Trigger actualizar el estado de las computadoras al insertar una rota
CREATE FUNCTION update_estado_computadoras()
    RETURNS trigger
    LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
UPDATE computadoras 
SET estado = 'rota' 
WHERE computadoras.id = NEW.id_computadora and computadoras.id_local = NEW.id_local;     
RETURN NEW;
END
$BODY$;


CREATE TRIGGER update_estado
AFTER INSERT
ON computadoras_rotas
FOR EACH ROW
EXECUTE PROCEDURE update_estado_computadoras()
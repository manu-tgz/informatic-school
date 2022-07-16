CREATE TYPE tipo_local AS ENUM ('departamento', 'laboratorio');

-- Crear Tabla locales
CREATE TABLE IF NOT EXISTS locales (
    id serial NOT NULL,
    nombre varchar(30) NOT NULL,
    tiempo int,
    labor varchar(80),
    cant_computadoras int DEFAULT 0,
    tipo tipo_local  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS departamentos (
    id_local int NOT NULL,
    PRIMARY KEY (id_local),
    FOREIGN KEY (id_local) REFERENCES locales (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TYPE tipo_laboratorio AS ENUM ('proyectos', 'docentes');

CREATE TABLE IF NOT EXISTS laboratorios (
    id_local int NOT NULL,
    tipo tipo_laboratorio  NOT NULL,
    PRIMARY KEY (id_local),
    FOREIGN KEY (id_local) REFERENCES locales (id) ON UPDATE CASCADE ON DELETE CASCADE
);




CREATE TYPE estado AS ENUM ('ocupada', 'libre', 'rota');
-- Crear Tabla computadora
CREATE TABLE IF NOT EXISTS computadoras (
    id int NOT NULL,
    id_local int NOT NULL,
    estado estado,
    PRIMARY KEY (id, id_local),
    FOREIGN KEY (id_local) REFERENCES locales (id)
);

CREATE TABLE IF NOT EXISTS computadoras_rotas (
    id_computadora int NOT NULL,
    id_local int NOT NULL,
    motivo varchar(100) NOT NULL,
    PRIMARY KEY (id_computadora, id_local),
    FOREIGN KEY (id_computadora, id_local) REFERENCES computadoras (id, id_local));

CREATE TYPE rol AS ENUM ('estudiante', 'profesor');
-- Crear Tabla docentes
CREATE TABLE IF NOT EXISTS docentes (
    numero serial NOT NULL,
    nombre varchar(30) NOT NULL,
    tipo rol  NOT NULL,
    PRIMARY KEY (numero)
);

-- Crear Tabla estudiantes
CREATE TABLE IF NOT EXISTS estudiantes (
    id_docente serial NOT NULL,
    año int NOT NULL,
    PRIMARY KEY (id_docente),
    FOREIGN KEY (id_docente) REFERENCES docentes (numero) ON UPDATE CASCADE ON DELETE CASCADE
);

--Crear asiganturas
CREATE TYPE asignatura AS ENUM ('Matematica', 'Español', 'Historia');

-- Crear Tabla profesores
CREATE TABLE IF NOT EXISTS profesores (
    id_docente serial NOT NULL,
    asignatura asignatura, 
    PRIMARY KEY (id_docente),
    FOREIGN KEY (id_docente) REFERENCES docentes (numero) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS bitacora_computadoras (                     
    id int NOT NULL,
    id_computadora int NOT NULL,
    id_local int NOT NULL,
    id_docente int NOT NULL,
    hora time NOT NULL
) PARTITION BY RANGE (hora);

CREATE TABLE bitacora_computadoras00 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('00:00:00') TO ('01:00:00');

CREATE TABLE bitacora_computadoras01 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('01:00:00') TO ('02:00:00');

CREATE TABLE bitacora_computadoras02 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('02:00:00') TO ('03:00:00');

CREATE TABLE bitacora_computadoras03 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('03:00:00') TO ('04:00:00');

CREATE TABLE bitacora_computadoras04 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('04:00:00') TO ('05:00:00');

CREATE TABLE bitacora_computadoras05 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('05:00:00') TO ('06:00:00');

CREATE TABLE bitacora_computadoras06 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('06:00:00') TO ('07:00:00');

CREATE TABLE bitacora_computadoras07 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('07:00:00') TO ('08:00:00');

CREATE TABLE bitacora_computadoras08 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('08:00:00') TO ('09:00:00');

CREATE TABLE bitacora_computadoras09 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('09:00:00') TO ('10:00:00');

CREATE TABLE bitacora_computadoras10 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('10:00:00') TO ('11:00:00');

CREATE TABLE bitacora_computadoras11 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('11:00:00') TO ('12:00:00'); 

CREATE TABLE bitacora_computadoras12 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('12:00:00') TO ('13:00:00');

CREATE TABLE bitacora_computadoras13 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('13:00:00') TO ('14:00:00');

CREATE TABLE bitacora_computadoras14 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('14:00:00') TO ('15:00:00');

CREATE TABLE bitacora_computadoras15 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('15:00:00') TO ('16:00:00');

CREATE TABLE bitacora_computadoras16 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('16:00:00') TO ('17:00:00');

CREATE TABLE bitacora_computadoras17 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('17:00:00') TO ('18:00:00');

CREATE TABLE bitacora_computadoras18 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('18:00:00') TO ('19:00:00');

CREATE TABLE bitacora_computadoras19 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('19:00:00') TO ('20:00:00');

CREATE TABLE bitacora_computadoras20 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('20:00:00') TO ('21:00:00');

CREATE TABLE bitacora_computadoras21 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('21:00:00') TO ('22:00:00');

CREATE TABLE bitacora_computadoras22 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('22:00:00') TO ('23:00:00');

CREATE TABLE bitacora_computadoras23 PARTITION OF bitacora_computadoras
FOR VALUES FROM ('23:00:00') TO ('24:00:00'); 

CREATE TABLE IF NOT EXISTS bitacora_locales (                     
    id int NOT NULL,
    id_local int NOT NULL,
    id_docente int NOT NULL,
    hora time NOT NULL
) PARTITION BY RANGE (hora);

CREATE TABLE bitacora_locales00 PARTITION OF bitacora_locales
FOR VALUES FROM ('00:00:00') TO ('01:00:00');

CREATE TABLE bitacora_locales01 PARTITION OF bitacora_locales
FOR VALUES FROM ('01:00:00') TO ('02:00:00');

CREATE TABLE bitacora_locales02 PARTITION OF bitacora_locales
FOR VALUES FROM ('02:00:00') TO ('03:00:00');

CREATE TABLE bitacora_locales03 PARTITION OF bitacora_locales
FOR VALUES FROM ('03:00:00') TO ('04:00:00');

CREATE TABLE bitacora_locales04 PARTITION OF bitacora_locales
FOR VALUES FROM ('04:00:00') TO ('05:00:00');

CREATE TABLE bitacora_locales05 PARTITION OF bitacora_locales
FOR VALUES FROM ('05:00:00') TO ('06:00:00');

CREATE TABLE bitacora_locales06 PARTITION OF bitacora_locales
FOR VALUES FROM ('06:00:00') TO ('07:00:00');

CREATE TABLE bitacora_locales07 PARTITION OF bitacora_locales
FOR VALUES FROM ('07:00:00') TO ('08:00:00');

CREATE TABLE bitacora_locales08 PARTITION OF bitacora_locales
FOR VALUES FROM ('08:00:00') TO ('09:00:00');

CREATE TABLE bitacora_locales09 PARTITION OF bitacora_locales
FOR VALUES FROM ('09:00:00') TO ('10:00:00');

CREATE TABLE bitacora_locales10 PARTITION OF bitacora_locales
FOR VALUES FROM ('10:00:00') TO ('11:00:00');

CREATE TABLE bitacora_locales11 PARTITION OF bitacora_locales
FOR VALUES FROM ('11:00:00') TO ('12:00:00'); 

CREATE TABLE bitacora_locales12 PARTITION OF bitacora_locales
FOR VALUES FROM ('12:00:00') TO ('13:00:00');

CREATE TABLE bitacora_locales13 PARTITION OF bitacora_locales
FOR VALUES FROM ('13:00:00') TO ('14:00:00');

CREATE TABLE bitacora_locales14 PARTITION OF bitacora_locales
FOR VALUES FROM ('14:00:00') TO ('15:00:00');

CREATE TABLE bitacora_locales15 PARTITION OF bitacora_locales
FOR VALUES FROM ('15:00:00') TO ('16:00:00');

CREATE TABLE bitacora_locales16 PARTITION OF bitacora_locales
FOR VALUES FROM ('16:00:00') TO ('17:00:00');

CREATE TABLE bitacora_locales17 PARTITION OF bitacora_locales
FOR VALUES FROM ('17:00:00') TO ('18:00:00');

CREATE TABLE bitacora_locales18 PARTITION OF bitacora_locales
FOR VALUES FROM ('18:00:00') TO ('19:00:00');

CREATE TABLE bitacora_locales19 PARTITION OF bitacora_locales
FOR VALUES FROM ('19:00:00') TO ('20:00:00');

CREATE TABLE bitacora_locales20 PARTITION OF bitacora_locales
FOR VALUES FROM ('20:00:00') TO ('21:00:00');

CREATE TABLE bitacora_locales21 PARTITION OF bitacora_locales
FOR VALUES FROM ('21:00:00') TO ('22:00:00');

CREATE TABLE bitacora_locales22 PARTITION OF bitacora_locales
FOR VALUES FROM ('22:00:00') TO ('23:00:00');

CREATE TABLE bitacora_locales23 PARTITION OF bitacora_locales
FOR VALUES FROM ('23:00:00') TO ('24:00:00'); 


----------------------------------------------------------------
SELECT id_computadora, id_local, motivo                
FROM computadoras_rotas;

CREATE FUNCTION estudiantes_por_año("año_input" integer)
    RETURNS TABLE(id_docente integer, nombre character varying) 
    LANGUAGE 'sql'

AS $BODY$
SELECT id_docente, nombre
FROM estudiantes, docentes
WHERE año =  año_input AND  estudiantes.id_docente = docentes.numero          
$BODY$; 

-- Actualizar cantidad de computadoras
CREATE FUNCTION update_cant_computadoras("id_local" integer)
    RETURNS void 
    LANGUAGE 'sql'

AS $BODY$
UPDATE locales 
SET cant_computadoras = cant_computadoras +1 
WHERE locales.id = id_local       
$BODY$;

-- Cantidad de computadoras libres

CREATE FUNCTION cant_computadoras_por_estado("estado_input" estado)
    RETURNS int 
    LANGUAGE 'sql'

AS $BODY$
SELECT Count(id)
FROM computadoras
WHERE estado = estado_input      
$BODY$;

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
EXECUTE PROCEDURE update_estado_computadoras();

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
EXECUTE PROCEDURE update_cant_computadoras();
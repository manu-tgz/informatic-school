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


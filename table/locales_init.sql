-- Crear Tabla local
CREATE TABLE IF NOT EXISTS local (
    id serial NOT NULL,
    nombre varchar(30) NOT NULL,
    tiempo int,
    labor varchar(80),
    cant_computadoras int,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS departamento (
    id_local int NOT NULL,
    PRIMARY KEY (id_local),
    FOREIGN KEY (id_local) REFERENCES local (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS laboratorio (
    id_local int NOT NULL,
    PRIMARY KEY (id_local),
    FOREIGN KEY (id_local) REFERENCES local (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS laboratorio_proyecto (
    id_local int NOT NULL,
    PRIMARY KEY (id_local),
    FOREIGN KEY (id_local) REFERENCES local (id) ON UPDATE CASCADE ON DELETE CASCADE
);
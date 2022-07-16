-- Crear Tabla computadora
CREATE TYPE estado AS ENUM ('ocupada', 'libre', 'rota');
CREATE TABLE IF NOT EXISTS computadora (
    id serial NOT NULL,
    local int NOT NULL,
    estado estado,
    PRIMARY KEY (id, local),
    FOREIGN KEY (local) REFERENCES local (id)
);

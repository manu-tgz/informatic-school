--Crear los estados
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
-- Crear Tabla docente
CREATE TABLE IF NOT EXISTS docente (
    NumeroS serial NOT NULL,
    nombre varchar(30) NOT NULL,
    PRIMARY KEY (NumeroS)
);

-- Crear Tabla docente
CREATE TABLE IF NOT EXISTS estudiante (
    id_docente serial NOT NULL,
    año int NOT NULL,
    PRIMARY KEY (id_docente),
    FOREIGN KEY (id_docente) REFERENCES docente (NumeroS) ON UPDATE CASCADE ON DELETE CASCADE
);

--Crear asiganturas
CREATE TYPE IF NOT EXISTS asigantura AS ENUM ('Matematica', 'Español', 'Historia');

-- Crear Tabla docente
CREATE TABLE IF NOT EXISTS profesor (
    id_docente serial NOT NULL,
    asigantura asigantura, 
    PRIMARY KEY (id_docente),
    FOREIGN KEY (id_docente) REFERENCES docente (NumeroS) ON UPDATE CASCADE ON DELETE CASCADE
);
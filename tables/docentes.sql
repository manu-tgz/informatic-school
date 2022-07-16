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
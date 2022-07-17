-- Poblar la tabla locales
INSERT INTO
    locales (id, nombre, tiempo, labor, tipo)
VALUES
    (1,'Departamento fisica', 8, 'Física', 'departamento' ),
    (2,'Departamento Español', 8, 'Español', 'departamento' ),
    (3,'laboratorio Historia', 8, 'Historia', 'laboratorio' ),
    (4,'laboratorio Filosofía', 8, 'Informática',  'laboratorio' ),
    (5,'laboratorio Matemática', 8, 'Matemática',  'laboratorio');

INSERT INTO
    departamentos (id_local)
VALUES
(1),
(2),
(3);

INSERT INTO
    laboratorios (id_local, tipo)
VALUES
(1, 'proyectos'),
(2,'proyectos'),
(3,'docentes');

-- Poblar la tabla computadora
INSERT INTO
    computadoras (id, id_local, estado)
VALUES
    (1,1, 'libre'),
    (2,1, 'libre'),
    (3,1, 'libre'),
    (4,1, 'libre'),
    (5,1, 'libre'),
    (1,2, 'libre'),
    (2,2, 'libre'),
    (1,3, 'libre'),
    (2,3, 'libre'),
    (1,4, 'libre'),
    (2,4, 'libre'),
    (3,4, 'libre'),
    (4,4, 'libre'),
    (5,4, 'libre'),
    (6,4, 'libre'),
    (7,4, 'libre'),
    (8,4, 'libre'),
    (9,4, 'libre'),
    (10,4, 'libre'),
    (1,5, 'libre'),
    (2,5, 'libre'),
    (3,5, 'libre'),
    (4,5, 'libre'),
    (5,5, 'libre');

INSERT INTO
    computadoras_rotas (id_computadora, id_local, motivo)                   
VALUES
    (1,5, 'mouse'),
    (2,5, 'teclado'),
    (3,5, 'monitor'),
    (4,5, 'monitor'),
    (5,5, 'monitor');

INSERT INTO
    docentes (numero, nombre, tipo)
VALUES
    (1, 'Roberto', 'profesor'),
    (2, 'Emilio', 'profesor'),
    (3, 'Rubén', 'profesor'),
    (4, 'Eliseo', 'profesor'),
    (5, 'Cristian', 'profesor'),
    (6, 'Leo', 'estudiante'),
    (7, 'Enrique', 'estudiante'),
    (8, 'hansel', 'estudiante'),
    (9, 'Manuel', 'estudiante'),
    (10, 'Yoan', 'estudiante');

INSERT INTO
    estudiantes (id_docente, año)                             
VALUES
    (6, 1),(7, 2),(8, 3),(9, 4),(10, 5);

INSERT INTO
    profesores (id_docente, asignatura)
VALUES
    (1, 'Matematica'),
    (2, 'Español'),
    (3, 'Historia'),
    (4, 'Español'),
    (5, 'Matematica');
--endregion estudiantes
--endregion docentes

--region bitacora_computadoras
INSERT INTO
    bitacora_computadoras (id_computadora,id_local,id_docente,hora)       
VALUES
(1, 1, 1, '00:10:20'),
(2, 2, 2, '00:50:20'),
(1, 2, 2, '01:00:20'),
(1, 3, 2, '05:00:20'),
(1, 1, 1, '07:10:20'),
(1, 1, 2, '03:50:20'),
(1, 1, 2, '04:00:20'),
(1, 1, 2, '06:00:50');

INSERT INTO
    bitacora_locales (id_local,id_docente,hora)     
VALUES
(1, 1, '00:10:20'),
(2, 2, '00:50:20'),
(2, 2, '01:00:20'),
(3, 2, '05:00:20'),
(1, 1, '00:10:21'),
(1, 3, '06:50:26'),
(1, 4, '04:00:20'),
(1, 6, '08:00:20');
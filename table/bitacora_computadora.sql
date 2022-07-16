CREATE TABLE IF NOT EXISTS bitacora_computadora
(   
    id integer NOT NULL,
    id_computadora integer,
    id_docente integer,
    hora time
) PARTITION BY RANGE (hora);

CREATE TABLE bitacora_computadora00 PARTITION OF bitacora_computadora
FOR VALUES FROM ('00:00:00') TO ('01:00:00');

CREATE TABLE bitacora_computadora01 PARTITION OF bitacora_computadora
FOR VALUES FROM ('01:00:00') TO ('02:00:00');

CREATE TABLE bitacora_computadora02 PARTITION OF bitacora_computadora
FOR VALUES FROM ('02:00:00') TO ('03:00:00');

CREATE TABLE bitacora_computadora03 PARTITION OF bitacora_computadora
FOR VALUES FROM ('03:00:00') TO ('04:00:00');

CREATE TABLE bitacora_computadora04 PARTITION OF bitacora_computadora
FOR VALUES FROM ('04:00:00') TO ('05:00:00');

CREATE TABLE bitacora_computadora05 PARTITION OF bitacora_computadora
FOR VALUES FROM ('05:00:00') TO ('06:00:00');

CREATE TABLE bitacora_computadora06 PARTITION OF bitacora_computadora
FOR VALUES FROM ('06:00:00') TO ('07:00:00');

CREATE TABLE bitacora_computadora07 PARTITION OF bitacora_computadora
FOR VALUES FROM ('07:00:00') TO ('08:00:00');

CREATE TABLE bitacora_computadora08 PARTITION OF bitacora_computadora
FOR VALUES FROM ('08:00:00') TO ('09:00:00');

CREATE TABLE bitacora_computadora09 PARTITION OF bitacora_computadora
FOR VALUES FROM ('09:00:00') TO ('10:00:00');

CREATE TABLE bitacora_computadora10 PARTITION OF bitacora_computadora
FOR VALUES FROM ('10:00:00') TO ('11:00:00');

CREATE TABLE bitacora_computadora11 PARTITION OF bitacora_computadora
FOR VALUES FROM ('11:00:00') TO ('12:00:00');
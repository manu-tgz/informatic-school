CREATE TABLE IF NOT EXISTS bitacora_computadoras (                     
    id serial NOT NULL,
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
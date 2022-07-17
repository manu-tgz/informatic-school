CREATE TABLE IF NOT EXISTS bitacora_locales (                     
    id serial NOT NULL,
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
DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
    vals String
) ENGINE = Memory;
insert into defaults values ('ba'), ('aa'), ('ba'), ('b'), ('ba'), ('aa');

DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
    vals String
) ENGINE = Memory;
insert into defaults values ('ba'), ('aa'), ('ba'), ('b'), ('ba'), ('aa');
DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
     vals UInt64
) ENGINE = Memory;
insert into defaults values (0), (0), (1), (0), (0), (0), (1), (2), (3), (5), (3), (1), (1), (4), (5), (2);
DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
    vals UInt32
) ENGINE = Memory;
insert into defaults values (0), (0), (1), (0), (0), (0), (1), (2), (3), (5), (3), (1), (1), (4), (5), (2);
DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
    vals Int32
) ENGINE = Memory;
insert into defaults values (0), (0), (-1), (0), (0), (0), (-1), (2), (3), (5), (3), (-1), (-1), (4), (5), (2);

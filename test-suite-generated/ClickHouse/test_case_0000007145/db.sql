DROP TABLE IF EXISTS t_enum8;
CREATE TABLE t_enum8( x Enum('hello' = 1, 'world' = 2) ) ENGINE = TinyLog;
INSERT INTO t_enum8 Values('hello'),('world'),('hello');

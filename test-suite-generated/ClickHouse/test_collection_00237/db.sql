DROP TABLE IF EXISTS tuple;
CREATE TABLE tuple (t Tuple(Date, UInt32, UInt64)) ENGINE = Memory;
INSERT INTO tuple VALUES ((concat('2000', '-01-01'), /* Hello */ 12+3, 45+6));
INSERT INTO tuple VALUES (('2000-01-01', 123, 456));

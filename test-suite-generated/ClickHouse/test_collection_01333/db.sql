DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS nr;
CREATE TABLE t (`x` UInt32, `s` LowCardinality(String)) ENGINE = Memory;
CREATE TABLE nr (`x` Nullable(UInt32), `s` Nullable(String)) ENGINE = Memory;
INSERT INTO t VALUES (1, 'l');
INSERT INTO nr VALUES (2, NULL);

DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS nr;
CREATE TABLE t (`x` UInt32, `lc` LowCardinality(String)) ENGINE = Memory;
CREATE TABLE nr (`x` Nullable(UInt32), `lc` Nullable(String)) ENGINE = Memory;
INSERT INTO t VALUES (1, 'l');
INSERT INTO nr VALUES (2, NULL);

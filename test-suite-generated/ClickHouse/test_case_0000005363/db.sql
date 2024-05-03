DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (`x` UInt32, `lc` LowCardinality(String) ) ENGINE = Memory;
INSERT INTO t1 VALUES (1, '1'), (2, '2');

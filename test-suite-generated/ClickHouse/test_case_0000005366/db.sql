DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (`x` UInt32, `lc` LowCardinality(String) ) ENGINE = Memory;
INSERT INTO t1 VALUES (1, '1'), (2, '2');
CREATE TABLE t2 (`x` UInt32, `lc` LowCardinality(String) ) ENGINE = Memory;
INSERT INTO t2 VALUES (1, '61f0c404-5cb3-11e7-907b-a6006ad3dba2');
INSERT INTO t2 VALUES (2, '2');

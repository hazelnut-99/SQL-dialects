DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE table t1 (a UInt64, b UInt64) ENGINE = Memory;
INSERT INTO t1 SELECT number % 2, number FROM numbers(10);
CREATE table t2 (a UInt64) ENGINE = Memory;
INSERT INTO t2 SELECT number % 2 FROM numbers(10);

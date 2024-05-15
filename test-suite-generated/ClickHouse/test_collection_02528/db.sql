DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (x UInt64) ENGINE = TinyLog;
INSERT INTO t1 VALUES (1), (2), (3);
CREATE TABLE t2 (x UInt64, value String) ENGINE = TinyLog;
INSERT INTO t2 VALUES (1, 'a'), (2, 'b'), (2, 'c');
INSERT INTO t2 VALUES (3, 'd'), (3, 'e'), (4, 'f');

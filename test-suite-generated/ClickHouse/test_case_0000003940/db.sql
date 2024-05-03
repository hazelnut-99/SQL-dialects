DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS d;
CREATE TABLE t (a String, b Int) ENGINE = TinyLog;
INSERT INTO t VALUES ('a', 0), ('a', 1), ('b', 0);

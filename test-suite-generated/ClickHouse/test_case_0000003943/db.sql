DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS d;
CREATE TABLE t (a String, b Int) ENGINE = TinyLog;
INSERT INTO t VALUES ('a', 0), ('a', 1), ('b', 0);
CREATE TABLE d (a String, b Int) ENGINE = Distributed(test_shard_localhost, currentDatabase(), t);
DROP TABLE d;

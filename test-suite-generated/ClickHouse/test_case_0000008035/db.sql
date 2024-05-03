DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS d;
CREATE TABLE t (x Enum8('abc' = 0, 'def' = 1, 'ghi' = 2)) ENGINE = TinyLog;
INSERT INTO t VALUES (0), (1), (2);
CREATE TABLE d (x Enum8('abc' = 0, 'def' = 1, 'xyz' = 2)) ENGINE = Distributed(test_shard_localhost, currentDatabase(), t);

DROP TABLE IF EXISTS t_lightweight_deletes;
CREATE TABLE t_lightweight_deletes (a UInt64) ENGINE = MergeTree ORDER BY a;
INSERT INTO t_lightweight_deletes VALUES (1) (2) (3);

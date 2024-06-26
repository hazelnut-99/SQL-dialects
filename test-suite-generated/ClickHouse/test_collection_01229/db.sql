DROP TABLE IF EXISTS t1_01361;
DROP TABLE IF EXISTS t2_01361;
DROP TABLE IF EXISTS mv1_01361;
DROP TABLE IF EXISTS b1_01361;
CREATE TABLE t1_01361 (
  i UInt32,
  time DateTime
) ENGINE = MergeTree()
PARTITION BY time
ORDER BY time;
CREATE TABLE t2_01361 (
  i UInt32,
  time DateTime
) ENGINE = MergeTree()
PARTITION BY time
ORDER BY time;
CREATE MATERIALIZED VIEW mv1_01361
TO t2_01361
AS SELECT * FROM (SELECT * FROM t1_01361);
CREATE TABLE b1_01361 AS t1_01361
ENGINE = Buffer(currentDatabase(), t1_01361, 1, 0, 0, 1, 1, 1, 1);
INSERT INTO b1_01361 VALUES (1, now());
INSERT INTO b1_01361 VALUES (2, now());

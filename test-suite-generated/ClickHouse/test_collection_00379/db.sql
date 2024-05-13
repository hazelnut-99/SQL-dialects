DROP TABLE IF EXISTS not_partitioned;
CREATE TABLE not_partitioned(x UInt8) ENGINE MergeTree ORDER BY x;
INSERT INTO not_partitioned VALUES (1), (2), (3);
INSERT INTO not_partitioned VALUES (4), (5);
OPTIMIZE TABLE not_partitioned PARTITION tuple() FINAL;

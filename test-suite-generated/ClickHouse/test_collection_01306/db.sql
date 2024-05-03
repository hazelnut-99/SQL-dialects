DROP TABLE IF EXISTS mergetree_00609;
DROP TABLE IF EXISTS distributed_00609;
CREATE TABLE mergetree_00609 (x UInt64, s String) ENGINE = MergeTree ORDER BY x;
INSERT INTO mergetree_00609 VALUES (1, 'hello'), (2, 'world');
CREATE TABLE distributed_00609 AS mergetree_00609 ENGINE = Distributed(test_shard_localhost, currentDatabase(), mergetree_00609);

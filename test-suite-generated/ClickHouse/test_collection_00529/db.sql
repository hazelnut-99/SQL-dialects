DROP TABLE IF EXISTS mergetree_00588;
DROP TABLE IF EXISTS distributed_00588;
CREATE TABLE mergetree_00588 (x UInt64, s String) ENGINE = MergeTree ORDER BY x;
INSERT INTO mergetree_00588 VALUES (1, 'hello'), (2, 'world');

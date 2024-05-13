DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (a UInt64) ENGINE = MergeTree() ORDER BY tuple();
INSERT INTO test_table VALUES (1);
DROP TABLE test_table;

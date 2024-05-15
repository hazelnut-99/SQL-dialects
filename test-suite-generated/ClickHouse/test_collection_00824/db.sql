DROP TABLE IF EXISTS test_table;
DROP TABLE IF EXISTS test_table_2;
CREATE TABLE test_table (value UInt8, name String) ENGINE = MergeTree() ORDER BY value;
INSERT INTO test_table VALUES (1, 'a'), (2, 'b'), (3, 'c');
DROP TABLE IF EXISTS test_table;

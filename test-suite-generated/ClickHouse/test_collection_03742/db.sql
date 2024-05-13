DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64
) ENGINE = MergeTree ORDER BY id;
INSERT INTO test_table VALUES (1);

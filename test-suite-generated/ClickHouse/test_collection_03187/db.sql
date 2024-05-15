DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    k UInt64,
)
ENGINE = MergeTree
ORDER BY k;

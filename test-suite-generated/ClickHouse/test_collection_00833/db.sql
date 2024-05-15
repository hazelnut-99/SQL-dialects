DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (n Int32, s String)
ENGINE = MergeTree() PARTITION BY n % 10 ORDER BY n;

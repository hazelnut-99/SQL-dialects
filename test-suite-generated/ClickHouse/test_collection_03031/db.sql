DROP TABLE IF EXISTS test_data;
CREATE TABLE test_data (
    col1 Nullable(String),
    col2 Nullable(String),
    col3 Nullable(String)
) ENGINE = Memory;
INSERT INTO test_data VALUES ('val1', NULL, 'val3');

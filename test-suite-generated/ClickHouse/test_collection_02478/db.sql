DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    alias_value_1 ALIAS id + alias_value_2 + 1,
    alias_value_2 ALIAS id + 5
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0);

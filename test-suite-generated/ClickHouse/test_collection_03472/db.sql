DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value Tuple(value_0_level_0 Tuple(value_0_level_1 String, value_1_level_1 String), value_1_level_0 String)
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table VALUES (0, (('value_0_level_1', 'value_1_level_1'), 'value_1_level_0'));

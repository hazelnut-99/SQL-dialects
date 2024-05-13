DROP TABLE IF EXISTS test_table_join_1;
CREATE TABLE test_table_join_1
(
    id UInt64,
    value String
) ENGINE=MergeTree
ORDER BY id
SAMPLE BY id;
INSERT INTO test_table_join_1 VALUES (0, 'Value'), (1, 'Value_1');
DROP TABLE IF EXISTS test_table_join_2;
CREATE TABLE test_table_join_2
(
    id UInt64,
    value String
) ENGINE=MergeTree
ORDER BY id
SAMPLE BY id;
INSERT INTO test_table_join_2 VALUES (0, 'Value'), (1, 'Value_1');

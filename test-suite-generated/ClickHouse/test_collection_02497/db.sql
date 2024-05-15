DROP TABLE IF EXISTS test_table_join_1;
CREATE TABLE test_table_join_1
(
    id UInt64,
    value UInt64
) ENGINE=SummingMergeTree(value)
ORDER BY id
SAMPLE BY id;
SYSTEM STOP MERGES test_table_join_1;
INSERT INTO test_table_join_1 VALUES (0, 1), (1, 1);
INSERT INTO test_table_join_1 VALUES (0, 2);
DROP TABLE IF EXISTS test_table_join_2;
CREATE TABLE test_table_join_2
(
    id UInt64,
    value UInt64
) ENGINE=SummingMergeTree(value)
ORDER BY id
SAMPLE BY id;
SYSTEM STOP MERGES test_table_join_2;
INSERT INTO test_table_join_2 VALUES (0, 1), (1, 1);
INSERT INTO test_table_join_2 VALUES (1, 2);

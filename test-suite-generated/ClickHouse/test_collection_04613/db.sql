DROP TABLE IF EXISTS test_table_1;
CREATE TABLE test_table_1
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
CREATE TABLE test_table_2
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table_1 SELECT number, number FROM numbers(10);
INSERT INTO test_table_2 SELECT number, number FROM numbers(10);

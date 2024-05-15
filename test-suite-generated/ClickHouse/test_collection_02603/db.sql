DROP TABLE IF EXISTS test_table_join_1;
CREATE TABLE test_table_join_1
(
    id UInt8,
    value String
)
ENGINE = TinyLog;
INSERT INTO test_table_join_1 VALUES (0, 'Value_0');
DROP TABLE IF EXISTS test_table_join_2;
CREATE TABLE test_table_join_2
(
    id UInt16,
    value String
)
ENGINE = TinyLog;
INSERT INTO test_table_join_2 VALUES (0, 'Value_1');

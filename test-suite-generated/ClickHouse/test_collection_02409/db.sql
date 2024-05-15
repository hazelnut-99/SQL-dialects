WITH 1 as a SELECT a;
WITH a as b SELECT 1 as a, b;
DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
WITH value_1 as value_2, id_1 as id_2, id AS id_1, value AS value_1 SELECT id_2, value_2 FROM test_table;

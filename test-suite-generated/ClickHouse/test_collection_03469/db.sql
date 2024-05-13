WITH 1 as a SELECT a;
WITH a as b SELECT 1 as a, b;
DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');

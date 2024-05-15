DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
WITH x -> x + 1 AS lambda, x -> x + 1 AS lambda SELECT lambda(1);

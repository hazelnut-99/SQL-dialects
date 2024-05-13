DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
WITH x -> x + 1 AS lambda SELECT lambda(1);
WITH x -> toString(x) AS lambda SELECT lambda(1), lambda(NULL), lambda([1,2,3]);
WITH x -> toString(x) AS lambda_1, lambda_1 AS lambda_2, lambda_2 AS lambda_3 SELECT lambda_1(1), lambda_2(NULL), lambda_3([1,2,3]);
WITH x -> x + 1 AS lambda SELECT lambda(id) FROM test_table;
WITH x -> toString(x) AS lambda SELECT lambda(id), lambda(value) FROM test_table;
WITH x -> x + 1 AS lambda SELECT arrayMap(lambda, [1,2,3]);

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
WITH x -> toString(x) AS lambda_1 SELECT arrayMap(lambda_1 AS lambda_2, [1,2,3]), arrayMap(lambda_2, ['1', '2', '3']);
DROP TABLE IF EXISTS test_table_tuple;
CREATE TABLE test_table_tuple
(
    id UInt64,
    value Tuple(value_0_level_0 String, value_1_level_0 String)
) ENGINE=TinyLog;
INSERT INTO test_table_tuple VALUES (0, ('value_0_level_0', 'value_1_level_0'));
WITH x -> concat(concat(toString(x.id), '_'), x.value) AS lambda SELECT cast((1, 'Value'), 'Tuple (id UInt64, value String)') AS value, lambda(value);
WITH x -> concat(concat(x.value_0_level_0, '_'), x.value_1_level_0) AS lambda SELECT lambda(value) FROM test_table_tuple;

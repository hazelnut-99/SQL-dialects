WITH x -> toString(x) AS lambda SELECT arrayMap(x -> lambda(x), [1,2,3]);
WITH x -> toString(x) AS lambda SELECT arrayMap(x -> arrayMap(y -> concat(lambda(x), '_', lambda(y)), [1,2,3]), [1,2,3]);
DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');

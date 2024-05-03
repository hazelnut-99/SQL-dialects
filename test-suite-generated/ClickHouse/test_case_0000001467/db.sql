DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value Date32
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, toDate32('2019-05-05'));
DROP DICTIONARY IF EXISTS test_dictionary;
CREATE DICTIONARY test_dictionary
(
    id UInt64,
    value Date32
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE 'test_table'))
LAYOUT(DIRECT());

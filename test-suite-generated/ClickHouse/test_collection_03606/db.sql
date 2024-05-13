DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
DROP DICTIONARY IF EXISTS test_dictionary;
CREATE DICTIONARY test_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
LAYOUT(FLAT())
SOURCE(CLICKHOUSE(TABLE 'test_table'))
LIFETIME(0);
WITH 'test_dictionary' AS dictionary SELECT dictGet(dictionary, 'value', toUInt64(0));
DROP DICTIONARY test_dictionary;
DROP TABLE test_table;
DROP TABLE IF EXISTS test_table_join;
CREATE TABLE test_table_join
(
    id UInt64,
    value String
) ENGINE=Join(Any, Left, id);
INSERT INTO test_table_join VALUES (0, 'Value');

DROP TABLE IF EXISTS 02176_test_simple_key_table;
CREATE TABLE 02176_test_simple_key_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 02176_test_simple_key_table VALUES (0, 'Value');
DROP DICTIONARY IF EXISTS 02176_test_simple_key_dictionary;
CREATE DICTIONARY 02176_test_simple_key_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02176_test_simple_key_table'))
LAYOUT(DIRECT());

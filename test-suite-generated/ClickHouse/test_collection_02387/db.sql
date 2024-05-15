DROP TABLE IF EXISTS dictionary_source_table;
CREATE TABLE dictionary_source_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO dictionary_source_table VALUES (0, 'Value');
DROP DICTIONARY IF EXISTS test_dictionary;
CREATE DICTIONARY test_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
LAYOUT(FLAT())
SOURCE(CLICKHOUSE(TABLE 'dictionary_source_table'))
LIFETIME(0);

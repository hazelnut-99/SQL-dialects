DROP TABLE IF EXISTS simple_key_dictionary_source_table;
CREATE TABLE simple_key_dictionary_source_table
(
    id UInt64,
    value String,
    value_nullable Nullable(String)
) ENGINE = TinyLog;
INSERT INTO simple_key_dictionary_source_table VALUES (1, 'First', 'First');
INSERT INTO simple_key_dictionary_source_table VALUES (2, 'Second', NULL);
INSERT INTO simple_key_dictionary_source_table VALUES (3, 'Third', 'Third');
DROP DICTIONARY IF EXISTS simple_key_dictionary;
CREATE DICTIONARY simple_key_dictionary
(
    id UInt64,
    value String,
    value_nullable Nullable(String)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'simple_key_dictionary_source_table'))
LAYOUT(DIRECT());

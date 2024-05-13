DROP DICTIONARY IF EXISTS example_simple_key_dictionary;
CREATE DICTIONARY example_simple_key_dictionary (
    id UInt64,
    value UInt64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE '' DATABASE currentDatabase()))
LAYOUT(DIRECT());

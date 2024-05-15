DROP TABLE IF EXISTS dictionary_non_nullable_source_table;
CREATE TABLE dictionary_non_nullable_source_table (id UInt64, value String) ENGINE=TinyLog;
INSERT INTO dictionary_non_nullable_source_table VALUES (0, 'Test');
DROP DICTIONARY IF EXISTS test_dictionary_non_nullable;
CREATE DICTIONARY test_dictionary_non_nullable (id UInt64, value String) PRIMARY KEY id LAYOUT(DIRECT()) SOURCE(CLICKHOUSE(TABLE 'dictionary_non_nullable_source_table'));

DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    key UInt64,
    value UInt16
) ENGINE=Memory() AS SELECT number, number FROM numbers(1e5);
DROP TABLE IF EXISTS test_table_nullable;
CREATE TABLE test_table_nullable
(
    key UInt64,
    value Nullable(UInt16)
) ENGINE=Memory() AS SELECT number, number % 2 == 0 ? NULL : number FROM numbers(1e5);
DROP TABLE IF EXISTS test_table_string;
CREATE TABLE test_table_string
(
    key String,
    value UInt16
) ENGINE=Memory() AS SELECT 'foo' || number::String, number FROM numbers(1e5);
DROP TABLE IF EXISTS test_table_complex;
CREATE TABLE test_table_complex
(
    key_1 UInt64,
    key_2 UInt64,
    value UInt16
) ENGINE=Memory() AS SELECT number, number, number FROM numbers(1e5);
DROP DICTIONARY IF EXISTS test_dictionary_10_shards;
CREATE DICTIONARY test_dictionary_10_shards
(
    key UInt64,
    value UInt16
) PRIMARY KEY key
SOURCE(CLICKHOUSE(TABLE test_table))
LAYOUT(SPARSE_HASHED(SHARDS 10))
LIFETIME(0);
SHOW CREATE test_dictionary_10_shards;
SYSTEM RELOAD DICTIONARY test_dictionary_10_shards;
DROP DICTIONARY test_dictionary_10_shards;
DROP DICTIONARY IF EXISTS test_dictionary_10_shards_nullable;
CREATE DICTIONARY test_dictionary_10_shards_nullable
(
    key UInt64,
    value Nullable(UInt16)
) PRIMARY KEY key
SOURCE(CLICKHOUSE(TABLE test_table_nullable))
LAYOUT(SPARSE_HASHED(SHARDS 10))
LIFETIME(0);
SHOW CREATE test_dictionary_10_shards_nullable;
SYSTEM RELOAD DICTIONARY test_dictionary_10_shards_nullable;

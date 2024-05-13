DROP TABLE IF EXISTS dictionary_nullable_source_table;
CREATE TABLE dictionary_nullable_source_table
(
    id UInt64,
    value Nullable(Int64)
) ENGINE=TinyLog;
DROP TABLE IF EXISTS dictionary_nullable_default_source_table;
CREATE TABLE dictionary_nullable_default_source_table
(
    id UInt64,
    value Nullable(UInt64)
) ENGINE=TinyLog;
INSERT INTO dictionary_nullable_source_table VALUES (0, 0), (1, NULL);
INSERT INTO dictionary_nullable_default_source_table VALUES (2, 2), (3, NULL);
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    value Nullable(Int64) DEFAULT NULL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_nullable_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
DROP DICTIONARY flat_dictionary;
DROP DICTIONARY IF EXISTS hashed_dictionary;
CREATE DICTIONARY hashed_dictionary
(
    id UInt64,
    value Nullable(Int64) DEFAULT NULL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_nullable_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(HASHED());
DROP DICTIONARY hashed_dictionary;
DROP DICTIONARY IF EXISTS cache_dictionary;
CREATE DICTIONARY cache_dictionary
(
    id UInt64,
    value Nullable(Int64) DEFAULT NULL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_nullable_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(CACHE(SIZE_IN_CELLS 10));
DROP DICTIONARY cache_dictionary;
DROP DICTIONARY IF EXISTS direct_dictionary;
CREATE DICTIONARY direct_dictionary
(
    id UInt64,
    value Nullable(Int64) DEFAULT NULL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_nullable_source_table'))
LAYOUT(DIRECT());

DROP TABLE IF EXISTS dictionary_source_table;
CREATE TABLE dictionary_source_table
(
    id UInt64,
    v1 String,
    v2 Nullable(String),
    v3 Nullable(UInt64)
) ENGINE=TinyLog;
INSERT INTO dictionary_source_table VALUES (0, 'zero', 'zero', 0), (1, 'one', NULL, 1);
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    v1 String,
    v2 Nullable(String) DEFAULT NULL,
    v3 Nullable(UInt64)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE 'dictionary_source_table'))
LIFETIME(MIN 0 MAX 0)
LAYOUT(FLAT());
DROP DICTIONARY flat_dictionary;
DROP DICTIONARY IF EXISTS hashed_dictionary;
CREATE DICTIONARY hashed_dictionary
(
    id UInt64,
    v1 String,
    v2 Nullable(String) DEFAULT NULL,
    v3 Nullable(UInt64)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE 'dictionary_source_table'))
LIFETIME(MIN 0 MAX 0)
LAYOUT(HASHED());
DROP DICTIONARY hashed_dictionary;
DROP DICTIONARY IF EXISTS hashed_array_dictionary;
CREATE DICTIONARY hashed_array_dictionary
(
    id UInt64,
    v1 String,
    v2 Nullable(String) DEFAULT NULL,
    v3 Nullable(UInt64)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE 'dictionary_source_table'))
LIFETIME(MIN 0 MAX 0)
LAYOUT(HASHED_ARRAY());
DROP DICTIONARY hashed_array_dictionary;
DROP TABLE IF EXISTS range_dictionary_source_table;
CREATE TABLE range_dictionary_source_table
(
    id UInt64,
    start Date,
    end Nullable(Date),
    val Nullable(UInt64)
) ENGINE=TinyLog;
INSERT INTO range_dictionary_source_table VALUES (0, '2023-01-01', Null, Null), (1, '2022-11-09', '2022-12-08', 1);
DROP DICTIONARY IF EXISTS range_hashed_dictionary;
CREATE DICTIONARY range_hashed_dictionary
(
    id UInt64,
    start Date,
    end Nullable(Date),
    val Nullable(UInt64)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE 'range_dictionary_source_table'))
LIFETIME(MIN 0 MAX 0)
LAYOUT(RANGE_HASHED())
RANGE(MIN start MAX end);

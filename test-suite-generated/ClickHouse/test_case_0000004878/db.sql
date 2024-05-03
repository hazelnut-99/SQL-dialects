DROP TABLE IF EXISTS 02183_dictionary_source_table;
CREATE TABLE 02183_dictionary_source_table
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
) ENGINE=TinyLog;
INSERT INTO 02183_dictionary_source_table VALUES (0, '2019-05-05', '2019-05-05', '2019-05-05', '2019-05-05');
DROP DICTIONARY IF EXISTS 02183_flat_dictionary;
CREATE DICTIONARY 02183_flat_dictionary
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_source_table'))
LIFETIME(0)
LAYOUT(FLAT());
DROP DICTIONARY 02183_flat_dictionary;
DROP DICTIONARY IF EXISTS 02183_hashed_dictionary;
CREATE DICTIONARY 02183_hashed_dictionary
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_source_table'))
LIFETIME(0)
LAYOUT(HASHED());
DROP DICTIONARY 02183_hashed_dictionary;
DROP DICTIONARY IF EXISTS 02183_hashed_array_dictionary;
CREATE DICTIONARY 02183_hashed_array_dictionary
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_source_table'))
LIFETIME(0)
LAYOUT(HASHED_ARRAY());
DROP DICTIONARY 02183_hashed_array_dictionary;
DROP DICTIONARY IF EXISTS 02183_cache_dictionary;
CREATE DICTIONARY 02183_cache_dictionary
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_source_table'))
LIFETIME(0)
LAYOUT(CACHE(SIZE_IN_CELLS 10));
DROP DICTIONARY 02183_cache_dictionary;
DROP DICTIONARY IF EXISTS 02183_direct_dictionary;
CREATE DICTIONARY 02183_direct_dictionary
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_source_table'))
LAYOUT(DIRECT());
DROP DICTIONARY 02183_direct_dictionary;
DROP TABLE 02183_dictionary_source_table;
DROP TABLE IF EXISTS 02183_ip_trie_dictionary_source_table;
CREATE TABLE 02183_ip_trie_dictionary_source_table
(
    prefix String,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
) ENGINE=TinyLog;
INSERT INTO 02183_ip_trie_dictionary_source_table VALUES ('127.0.0.1', '2019-05-05', '2019-05-05', '2019-05-05', '2019-05-05');
DROP DICTIONARY IF EXISTS 02183_ip_trie_dictionary;
CREATE DICTIONARY 02183_ip_trie_dictionary
(
    prefix String,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
)
PRIMARY KEY prefix
SOURCE(CLICKHOUSE(TABLE '02183_ip_trie_dictionary_source_table'))
LAYOUT(IP_TRIE(access_to_key_from_attributes 1))
LIFETIME(0);

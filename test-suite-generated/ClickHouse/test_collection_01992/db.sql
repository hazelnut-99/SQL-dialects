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
DROP DICTIONARY direct_dictionary;
DROP DICTIONARY IF EXISTS ip_trie_dictionary;
CREATE DICTIONARY ip_trie_dictionary
(
    prefix String,
    value Nullable(Int64) DEFAULT NULL
)
PRIMARY KEY prefix
SOURCE(CLICKHOUSE(HOST 'localhost' port tcpPort() TABLE 'dictionary_nullable_source_table'))
LIFETIME(MIN 10 MAX 1000)
LAYOUT(IP_TRIE());
DROP TABLE dictionary_nullable_source_table;
DROP TABLE dictionary_nullable_default_source_table;
DROP TABLE IF EXISTS polygon_dictionary_nullable_source_table;
CREATE TABLE polygon_dictionary_nullable_source_table
(
    key Array(Array(Array(Tuple(Float64, Float64)))),
    value Nullable(Int64)
) ENGINE = TinyLog;
DROP TABLE IF EXISTS polygon_dictionary_nullable_default_source_table;
CREATE TABLE polygon_dictionary_nullable_default_source_table
(
    key Tuple(Float64, Float64),
    value Nullable(UInt64)
) ENGINE=TinyLog;
INSERT INTO polygon_dictionary_nullable_source_table VALUES ([[[(0, 0), (0, 1), (1, 1), (1, 0)]]], 0), ([[[(0, 0), (0, 1.5), (1.5, 1.5), (1.5, 0)]]], NULL);
INSERT INTO polygon_dictionary_nullable_default_source_table VALUES ((2.0, 2.0), 2), ((4, 4), NULL);
DROP DICTIONARY IF EXISTS polygon_dictionary;
CREATE DICTIONARY polygon_dictionary
(
    key Array(Array(Array(Tuple(Float64, Float64)))),
    value Nullable(UInt64) DEFAULT NULL
)
PRIMARY KEY key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'polygon_dictionary_nullable_source_table'))
LIFETIME(MIN 0 MAX 1000)
LAYOUT(POLYGON());
DROP DICTIONARY polygon_dictionary;
DROP TABLE polygon_dictionary_nullable_source_table;
DROP TABLE polygon_dictionary_nullable_default_source_table;
DROP TABLE IF EXISTS range_dictionary_nullable_source_table;
CREATE TABLE range_dictionary_nullable_source_table
(
  key UInt64,
  start_date Date,
  end_date Date,
  value Nullable(UInt64)
)
ENGINE = TinyLog;
DROP TABLE IF EXISTS range_dictionary_nullable_default_source_table;
CREATE TABLE range_dictionary_nullable_default_source_table
(
    key UInt64,
    value Nullable(UInt64)
) ENGINE=TinyLog;
INSERT INTO range_dictionary_nullable_source_table VALUES (0, toDate('2019-05-05'), toDate('2019-05-20'), 0), (1, toDate('2019-05-05'), toDate('2019-05-20'), NULL);
INSERT INTO range_dictionary_nullable_default_source_table VALUES (2, 2), (3, NULL);
DROP DICTIONARY IF EXISTS range_dictionary;
CREATE DICTIONARY range_dictionary
(
  key UInt64,
  start_date Date,
  end_date Date,
  value Nullable(UInt64) DEFAULT NULL
)
PRIMARY KEY key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'range_dictionary_nullable_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(RANGE_HASHED())
RANGE(MIN start_date MAX end_date);

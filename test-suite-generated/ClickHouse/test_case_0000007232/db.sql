DROP TABLE IF EXISTS dictionary_array_source_table;
CREATE TABLE dictionary_array_source_table
(
    id UInt64,
    array_value Array(Int64)
) ENGINE=TinyLog;
INSERT INTO dictionary_array_source_table VALUES (0, [0, 1, 2]);
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_array_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
DROP DICTIONARY flat_dictionary;
DROP DICTIONARY IF EXISTS hashed_dictionary;
CREATE DICTIONARY hashed_dictionary
(
    id UInt64,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_array_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(HASHED());
DROP DICTIONARY hashed_dictionary;
DROP DICTIONARY IF EXISTS cache_dictionary;
CREATE DICTIONARY cache_dictionary
(
    id UInt64,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_array_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(CACHE(SIZE_IN_CELLS 10));
DROP DICTIONARY cache_dictionary;
DROP DICTIONARY IF EXISTS direct_dictionary;
CREATE DICTIONARY direct_dictionary
(
    id UInt64,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_array_source_table'))
LAYOUT(DIRECT());
DROP DICTIONARY direct_dictionary;
DROP TABLE IF EXISTS ip_trie_dictionary_array_source_table;
CREATE TABLE ip_trie_dictionary_array_source_table
(
    prefix String,
    array_value Array(Int64)
) ENGINE = TinyLog;
DROP TABLE dictionary_array_source_table;
DROP DICTIONARY IF EXISTS ip_trie_dictionary;
CREATE DICTIONARY ip_trie_dictionary
(
    prefix String,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY prefix
SOURCE(CLICKHOUSE(HOST 'localhost' port tcpPort() TABLE 'ip_trie_dictionary_array_source_table'))
LIFETIME(MIN 10 MAX 1000)
LAYOUT(IP_TRIE());
INSERT INTO ip_trie_dictionary_array_source_table VALUES ('127.0.0.0', [0, 1, 2]);
DROP DICTIONARY ip_trie_dictionary;
DROP TABLE ip_trie_dictionary_array_source_table;
DROP TABLE IF EXISTS polygon_dictionary_array_source_table;
CREATE TABLE polygon_dictionary_array_source_table
(
    key Array(Array(Array(Tuple(Float64, Float64)))),
    array_value Array(Int64)
) ENGINE = TinyLog;
INSERT INTO polygon_dictionary_array_source_table VALUES ([[[(0, 0), (0, 1), (1, 1), (1, 0)]]], [0, 1, 2]);
DROP DICTIONARY IF EXISTS polygon_dictionary;
CREATE DICTIONARY polygon_dictionary
(
    key Array(Array(Array(Tuple(Float64, Float64)))),
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'polygon_dictionary_array_source_table'))
LIFETIME(MIN 0 MAX 1000)
LAYOUT(POLYGON());
DROP DICTIONARY polygon_dictionary;
DROP TABLE polygon_dictionary_array_source_table;
DROP TABLE IF EXISTS range_dictionary_array_source_table;
CREATE TABLE range_dictionary_array_source_table
(
  key UInt64,
  start_date Date,
  end_date Date,
  array_value Array(Int64)
)
ENGINE = TinyLog;
INSERT INTO range_dictionary_array_source_table VALUES(1, toDate('2019-05-05'), toDate('2019-05-20'), [0, 1, 2]);
CREATE DICTIONARY range_dictionary
(
  key UInt64,
  start_date Date,
  end_date Date,
  array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'range_dictionary_array_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(RANGE_HASHED())
RANGE(MIN start_date MAX end_date);

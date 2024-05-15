DROP TABLE IF EXISTS 02183_dictionary_test_table;
CREATE TABLE 02183_dictionary_test_table (id UInt64) ENGINE=TinyLog;
INSERT INTO 02183_dictionary_test_table VALUES (0), (1);
DROP DICTIONARY IF EXISTS 02183_flat_dictionary;
CREATE DICTIONARY 02183_flat_dictionary
(
    id UInt64
)
PRIMARY KEY id
LAYOUT(FLAT())
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_test_table'))
LIFETIME(0);
DROP DICTIONARY 02183_flat_dictionary;
DROP DICTIONARY IF EXISTS 02183_hashed_dictionary;
CREATE DICTIONARY 02183_hashed_dictionary
(
    id UInt64
)
PRIMARY KEY id
LAYOUT(HASHED())
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_test_table'))
LIFETIME(0);
DROP DICTIONARY 02183_hashed_dictionary;
DROP DICTIONARY IF EXISTS 02183_hashed_array_dictionary;
CREATE DICTIONARY 02183_hashed_array_dictionary
(
    id UInt64
)
PRIMARY KEY id
LAYOUT(HASHED_ARRAY())
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_test_table'))
LIFETIME(0);
DROP DICTIONARY 02183_hashed_array_dictionary;
DROP DICTIONARY IF EXISTS 02183_cache_dictionary;
CREATE DICTIONARY 02183_cache_dictionary
(
    id UInt64
)
PRIMARY KEY id
LAYOUT(CACHE(SIZE_IN_CELLS 10))
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_test_table'))
LIFETIME(0);

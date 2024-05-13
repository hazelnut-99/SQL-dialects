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
DROP DICTIONARY simple_key_dictionary;
DROP TABLE simple_key_dictionary_source_table;
DROP TABLE IF EXISTS complex_key_dictionary_source_table;
CREATE TABLE complex_key_dictionary_source_table
(
    id UInt64,
    id_key String,
    value String,
    value_nullable Nullable(String)
) ENGINE = TinyLog;
INSERT INTO complex_key_dictionary_source_table VALUES (1, 'key', 'First', 'First');
INSERT INTO complex_key_dictionary_source_table VALUES (2, 'key', 'Second', NULL);
INSERT INTO complex_key_dictionary_source_table VALUES (3, 'key', 'Third', 'Third');
DROP DICTIONARY IF EXISTS complex_key_dictionary;
CREATE DICTIONARY complex_key_dictionary
(
    id UInt64,
    id_key String,
    value String,
    value_nullable Nullable(String)
)
PRIMARY KEY id, id_key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'complex_key_dictionary_source_table'))
LAYOUT(COMPLEX_KEY_DIRECT());
DROP DICTIONARY complex_key_dictionary;
DROP TABLE complex_key_dictionary_source_table;
DROP TABLE IF EXISTS range_key_dictionary_source_table;
CREATE TABLE range_key_dictionary_source_table
(
    key UInt64,
    start_date Date,
    end_date Date,
    value String,
    value_nullable Nullable(String)
)
ENGINE = TinyLog();
INSERT INTO range_key_dictionary_source_table VALUES(1, toDate('2019-05-20'), toDate('2019-05-20'), 'First', 'First');
INSERT INTO range_key_dictionary_source_table VALUES(2, toDate('2019-05-20'), toDate('2019-05-20'), 'Second', NULL);
INSERT INTO range_key_dictionary_source_table VALUES(3, toDate('2019-05-20'), toDate('2019-05-20'), 'Third', 'Third');
DROP DICTIONARY IF EXISTS range_key_dictionary;
CREATE DICTIONARY range_key_dictionary
(
    key UInt64,
    start_date Date,
    end_date Date,
    value String,
    value_nullable Nullable(String)
)
PRIMARY KEY key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'range_key_dictionary_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(RANGE_HASHED())
RANGE(MIN start_date MAX end_date);

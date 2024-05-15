DROP DATABASE IF EXISTS 01765_db;
CREATE DATABASE 01765_db;
CREATE TABLE 01765_db.simple_key_simple_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second String
)
ENGINE = TinyLog;
INSERT INTO 01765_db.simple_key_simple_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01765_db.simple_key_simple_attributes_source_table VALUES(1, 'value_1', 'value_second_1');
INSERT INTO 01765_db.simple_key_simple_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01765_db.sparse_hashed_dictionary_simple_key_simple_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second String DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_simple_attributes_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(SPARSE_HASHED());
DROP DICTIONARY 01765_db.sparse_hashed_dictionary_simple_key_simple_attributes;
DROP TABLE 01765_db.simple_key_simple_attributes_source_table;
CREATE TABLE 01765_db.simple_key_complex_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second Nullable(String)
)
ENGINE = TinyLog;
INSERT INTO 01765_db.simple_key_complex_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01765_db.simple_key_complex_attributes_source_table VALUES(1, 'value_1', NULL);
INSERT INTO 01765_db.simple_key_complex_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01765_db.hashed_dictionary_simple_key_complex_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second Nullable(String) DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_complex_attributes_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(HASHED());

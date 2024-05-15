DROP DATABASE IF EXISTS 01766_db;
CREATE DATABASE 01766_db;
CREATE TABLE 01766_db.complex_key_simple_attributes_source_table
(
   id UInt64,
   id_key String,
   value_first String,
   value_second String
)
ENGINE = TinyLog;
INSERT INTO 01766_db.complex_key_simple_attributes_source_table VALUES(0, 'id_key_0', 'value_0', 'value_second_0');
INSERT INTO 01766_db.complex_key_simple_attributes_source_table VALUES(1, 'id_key_1', 'value_1', 'value_second_1');
INSERT INTO 01766_db.complex_key_simple_attributes_source_table VALUES(2, 'id_key_2', 'value_2', 'value_second_2');
CREATE DICTIONARY 01766_db.hashed_dictionary_complex_key_simple_attributes
(
   id UInt64,
   id_key String,
   value_first String DEFAULT 'value_first_default',
   value_second String DEFAULT 'value_second_default'
)
PRIMARY KEY id, id_key
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'complex_key_simple_attributes_source_table' DB '01766_db'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(COMPLEX_KEY_HASHED());

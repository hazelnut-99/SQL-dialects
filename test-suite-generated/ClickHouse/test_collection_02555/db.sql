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

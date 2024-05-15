DROP DATABASE IF EXISTS 01753_dictionary_db;
CREATE DATABASE 01753_dictionary_db;
CREATE TABLE 01753_dictionary_db.simple_key_simple_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second String
)
ENGINE = TinyLog;
INSERT INTO 01753_dictionary_db.simple_key_simple_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01753_dictionary_db.simple_key_simple_attributes_source_table VALUES(1, 'value_1', 'value_second_1');
INSERT INTO 01753_dictionary_db.simple_key_simple_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01753_dictionary_db.direct_dictionary_simple_key_simple_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second String DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_simple_attributes_source_table'))
LAYOUT(DIRECT());
DROP DICTIONARY 01753_dictionary_db.direct_dictionary_simple_key_simple_attributes;
DROP TABLE 01753_dictionary_db.simple_key_simple_attributes_source_table;
CREATE TABLE 01753_dictionary_db.simple_key_complex_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second Nullable(String)
)
ENGINE = TinyLog;
INSERT INTO 01753_dictionary_db.simple_key_complex_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01753_dictionary_db.simple_key_complex_attributes_source_table VALUES(1, 'value_1', NULL);
INSERT INTO 01753_dictionary_db.simple_key_complex_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01753_dictionary_db.direct_dictionary_simple_key_complex_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second Nullable(String) DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_complex_attributes_source_table'))
LAYOUT(DIRECT());
DROP DICTIONARY 01753_dictionary_db.direct_dictionary_simple_key_complex_attributes;
DROP TABLE 01753_dictionary_db.simple_key_complex_attributes_source_table;
CREATE TABLE 01753_dictionary_db.simple_key_hierarchy_table
(
    id UInt64,
    parent_id UInt64
) ENGINE = TinyLog();
INSERT INTO 01753_dictionary_db.simple_key_hierarchy_table VALUES (1, 0);
INSERT INTO 01753_dictionary_db.simple_key_hierarchy_table VALUES (2, 1);
INSERT INTO 01753_dictionary_db.simple_key_hierarchy_table VALUES (3, 1);
INSERT INTO 01753_dictionary_db.simple_key_hierarchy_table VALUES (4, 2);
CREATE DICTIONARY 01753_dictionary_db.direct_dictionary_simple_key_hierarchy
(
   id UInt64,
   parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_hierarchy_table'))
LAYOUT(DIRECT());

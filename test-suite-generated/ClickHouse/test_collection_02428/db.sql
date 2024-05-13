DROP DATABASE IF EXISTS 01681_database_for_flat_dictionary;
CREATE DATABASE 01681_database_for_flat_dictionary;
CREATE TABLE 01681_database_for_flat_dictionary.simple_key_simple_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second String
)
ENGINE = TinyLog;
INSERT INTO 01681_database_for_flat_dictionary.simple_key_simple_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01681_database_for_flat_dictionary.simple_key_simple_attributes_source_table VALUES(1, 'value_1', 'value_second_1');
INSERT INTO 01681_database_for_flat_dictionary.simple_key_simple_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01681_database_for_flat_dictionary.flat_dictionary_simple_key_simple_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second String DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_simple_attributes_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
DROP DICTIONARY 01681_database_for_flat_dictionary.flat_dictionary_simple_key_simple_attributes;
DROP TABLE 01681_database_for_flat_dictionary.simple_key_simple_attributes_source_table;
CREATE TABLE 01681_database_for_flat_dictionary.simple_key_complex_attributes_source_table
(
   id UInt64,
   value_first String,
   value_second Nullable(String)
)
ENGINE = TinyLog;
INSERT INTO 01681_database_for_flat_dictionary.simple_key_complex_attributes_source_table VALUES(0, 'value_0', 'value_second_0');
INSERT INTO 01681_database_for_flat_dictionary.simple_key_complex_attributes_source_table VALUES(1, 'value_1', NULL);
INSERT INTO 01681_database_for_flat_dictionary.simple_key_complex_attributes_source_table VALUES(2, 'value_2', 'value_second_2');
CREATE DICTIONARY 01681_database_for_flat_dictionary.flat_dictionary_simple_key_complex_attributes
(
   id UInt64,
   value_first String DEFAULT 'value_first_default',
   value_second Nullable(String) DEFAULT 'value_second_default'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_complex_attributes_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
DROP DICTIONARY 01681_database_for_flat_dictionary.flat_dictionary_simple_key_complex_attributes;
DROP TABLE 01681_database_for_flat_dictionary.simple_key_complex_attributes_source_table;
CREATE TABLE 01681_database_for_flat_dictionary.simple_key_hierarchy_table
(
    id UInt64,
    parent_id UInt64
) ENGINE = TinyLog();
INSERT INTO 01681_database_for_flat_dictionary.simple_key_hierarchy_table VALUES (1, 0);
INSERT INTO 01681_database_for_flat_dictionary.simple_key_hierarchy_table VALUES (2, 1);
INSERT INTO 01681_database_for_flat_dictionary.simple_key_hierarchy_table VALUES (3, 1);
INSERT INTO 01681_database_for_flat_dictionary.simple_key_hierarchy_table VALUES (4, 2);
CREATE DICTIONARY 01681_database_for_flat_dictionary.flat_dictionary_simple_key_hierarchy
(
   id UInt64,
   parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'simple_key_hierarchy_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());

DROP DATABASE IF EXISTS database_for_dict;
CREATE DATABASE database_for_dict;
DROP TABLE IF EXISTS database_for_dict.dict_source;
CREATE TABLE database_for_dict.dict_source (id UInt64, parent_id UInt64, value String) ENGINE = Memory;
INSERT INTO database_for_dict.dict_source VALUES (1, 0, 'hello'), (2, 1, 'world'), (3, 2, 'upyachka'), (11, 22, 'a'), (22, 11, 'b');
DROP DICTIONARY IF EXISTS database_for_dict.dictionary_with_hierarchy;
CREATE DICTIONARY database_for_dict.dictionary_with_hierarchy
(
    id UInt64, parent_id UInt64 HIERARCHICAL, value String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(host 'localhost' port tcpPort() user 'default' db 'database_for_dict' table 'dict_source'))
LAYOUT(HASHED())
LIFETIME(MIN 1 MAX 1);

DROP DATABASE IF EXISTS database_for_dict_01268;
CREATE DATABASE database_for_dict_01268;
DROP TABLE IF EXISTS database_for_dict_01268.table_for_dict1;
DROP TABLE IF EXISTS database_for_dict_01268.table_for_dict2;
DROP TABLE IF EXISTS database_for_dict_01268.table_for_dict3;
CREATE TABLE database_for_dict_01268.table_for_dict1
(
  key_column UInt64,
  second_column UInt64,
  third_column String
)
ENGINE = MergeTree()
ORDER BY key_column;
INSERT INTO database_for_dict_01268.table_for_dict1 VALUES (100500, 10000000, 'Hello world');
CREATE TABLE database_for_dict_01268.table_for_dict2
(
  region_id UInt64,
  parent_region UInt64,
  region_name String
)
ENGINE = MergeTree()
ORDER BY region_id;
INSERT INTO database_for_dict_01268.table_for_dict2 VALUES (1, 0, 'Russia');
INSERT INTO database_for_dict_01268.table_for_dict2 VALUES (2, 1, 'Moscow');
INSERT INTO database_for_dict_01268.table_for_dict2 VALUES (3, 2, 'Center');
INSERT INTO database_for_dict_01268.table_for_dict2 VALUES (4, 0, 'Great Britain');
INSERT INTO database_for_dict_01268.table_for_dict2 VALUES (5, 4, 'London');
CREATE TABLE database_for_dict_01268.table_for_dict3
(
  region_id UInt64,
  parent_region Float32,
  region_name String
)
ENGINE = MergeTree()
ORDER BY region_id;
INSERT INTO database_for_dict_01268.table_for_dict3 VALUES (1, 0.5, 'Russia');
INSERT INTO database_for_dict_01268.table_for_dict3 VALUES (2, 1.6, 'Moscow');
INSERT INTO database_for_dict_01268.table_for_dict3 VALUES (3, 2.3, 'Center');
INSERT INTO database_for_dict_01268.table_for_dict3 VALUES (4, 0.2, 'Great Britain');
INSERT INTO database_for_dict_01268.table_for_dict3 VALUES (5, 4.9, 'London');
DROP DATABASE IF EXISTS db_01268;
CREATE DATABASE db_01268;
DROP DICTIONARY IF EXISTS db_01268.dict1;
DROP DICTIONARY IF EXISTS db_01268.dict2;
DROP DICTIONARY IF EXISTS db_01268.dict3;
CREATE DICTIONARY db_01268.dict3
(
  region_id UInt64 DEFAULT 0,
  parent_region Float32 DEFAULT 0,
  region_name String DEFAULT ''
)
PRIMARY KEY region_id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'table_for_dict3' PASSWORD '' DB 'database_for_dict_01268'))
LAYOUT(DIRECT());

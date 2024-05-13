DROP DATABASE IF EXISTS database_for_dict;
CREATE DATABASE database_for_dict;
DROP TABLE IF EXISTS database_for_dict.table_for_dict;
CREATE TABLE database_for_dict.table_for_dict
(
  key_column UInt64,
  second_column UInt64,
  third_column String
)
ENGINE = MergeTree()
ORDER BY key_column;
INSERT INTO database_for_dict.table_for_dict VALUES (100500, 10000000, 'Hello world');
DROP DATABASE IF EXISTS ordinary_db;
CREATE DATABASE ordinary_db;
DROP DICTIONARY IF EXISTS ordinary_db.dict1;

DROP DATABASE IF EXISTS memory_db;
DROP DATABASE IF EXISTS db_01018;
DROP DATABASE IF EXISTS database_for_dict_01018;
CREATE DATABASE database_for_dict_01018;
CREATE TABLE database_for_dict_01018.table_for_dict
(
  key_column UInt64,
  second_column UInt8,
  third_column String
)
ENGINE = MergeTree()
ORDER BY key_column;
INSERT INTO database_for_dict_01018.table_for_dict VALUES (1, 100, 'Hello world');
DROP DATABASE IF EXISTS db_01018;
CREATE DATABASE db_01018;

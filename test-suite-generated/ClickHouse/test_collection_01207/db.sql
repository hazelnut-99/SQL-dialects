DROP DATABASE IF EXISTS database_for_dict;
CREATE DATABASE database_for_dict;
CREATE TABLE database_for_dict.table_for_dict
(
  key_column UInt64,
  second_column UInt8,
  third_column String,
  fourth_column Float64
)
ENGINE = MergeTree()
ORDER BY key_column;
INSERT INTO database_for_dict.table_for_dict SELECT number, number % 17, toString(number * number), number / 2.0 from numbers(100);
CREATE DICTIONARY database_for_dict.dict1
(
  key_column UInt64 DEFAULT 0,
  second_column UInt8 DEFAULT 1,
  third_column String DEFAULT 'qqq',
  fourth_column Float64 DEFAULT 42.0
)
PRIMARY KEY key_column
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'table_for_dict' DB 'database_for_dict'))
LIFETIME(MIN 1 MAX 10)
LAYOUT(FLAT());

DROP DATABASE IF EXISTS db_01526;
CREATE DATABASE db_01526;
CREATE TABLE db_01526.table_for_dict1
(
  key_column UInt64,
  second_column UInt64,
  third_column String
)
ENGINE = MergeTree()
ORDER BY (key_column, second_column);
INSERT INTO db_01526.table_for_dict1 VALUES (1, 2, 'aaa'), (1, 3, 'bbb'), (2, 3, 'ccc');
CREATE DICTIONARY db_01526.dict1
(
  key_column UInt64 DEFAULT 0,
  second_column UInt64 DEFAULT 0,
  third_column String DEFAULT 'qqq'
)
PRIMARY KEY key_column, second_column
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'table_for_dict1' PASSWORD '' DB 'db_01526'))
LAYOUT(COMPLEX_KEY_DIRECT());

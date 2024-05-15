DROP TABLE IF EXISTS table_rename_with_default;
CREATE TABLE table_rename_with_default
(
  date Date,
  key UInt64,
  value1 String,
  value2 String DEFAULT concat('Hello ', value1),
  value3 String ALIAS concat('Word ', value1)
)
ENGINE = MergeTree()
PARTITION BY date
ORDER BY key;
INSERT INTO table_rename_with_default (date, key, value1) SELECT toDateTime(toDate('2019-10-01') + number % 3, 'Asia/Istanbul'), number, toString(number)  from numbers(9);
SHOW CREATE TABLE table_rename_with_default;
ALTER TABLE table_rename_with_default RENAME COLUMN value1 TO renamed_value1;
SHOW CREATE TABLE table_rename_with_default;

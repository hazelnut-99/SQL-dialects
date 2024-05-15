DROP TABLE IF EXISTS table_for_rename;
CREATE TABLE table_for_rename
(
  date Date,
  key UInt64,
  value1 String,
  value2 String,
  value3 String,
  CONSTRAINT cs_value1 CHECK toInt64(value1) < toInt64(value2),
  CONSTRAINT cs_value2 CHECK toInt64(value2) < toInt64(value3)
)
ENGINE = MergeTree()
PARTITION BY date
ORDER BY key;
INSERT INTO table_for_rename SELECT toDate('2019-10-01') + number % 3, number, toString(number), toString(number + 1), toString(number + 2) from numbers(9);

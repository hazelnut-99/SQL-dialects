DROP TABLE IF EXISTS compress_table;
CREATE TABLE compress_table
(
  key UInt64,
  value1 String CODEC(Default),
  value2 UInt64 CODEC(Delta, Default),
  value3 String CODEC(ZSTD(10))
)
ENGINE = MergeTree()
ORDER BY key;
INSERT INTO compress_table VALUES(1, '1', '1', '1');
ALTER TABLE compress_table MODIFY COLUMN value3 CODEC(Default);
INSERT INTO compress_table VALUES(2, '2', '2', '2');

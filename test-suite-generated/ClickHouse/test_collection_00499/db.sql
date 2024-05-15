DROP TABLE IF EXISTS alter_column;
CREATE TABLE alter_column(x UInt32, y Int32) ENGINE MergeTree PARTITION BY x ORDER BY x;
SHOW CREATE TABLE alter_column;
ALTER TABLE alter_column MODIFY COLUMN y Int64;
SHOW CREATE TABLE alter_column;

DROP TABLE IF EXISTS test;
CREATE TABLE test (x Enum('hello' = 1, 'world' = 2), y String) ENGINE = MergeTree PARTITION BY x ORDER BY y;
INSERT INTO test VALUES ('hello', 'test');
ALTER TABLE test MODIFY COLUMN x Enum('hello' = 1, 'world' = 2, 'goodbye' = 3);
INSERT INTO test VALUES ('goodbye', 'test');
OPTIMIZE TABLE test FINAL;

DROP TABLE IF EXISTS test;
CREATE TABLE test (x Enum('hello' = 1, 'world' = 2), y String) ENGINE = MergeTree PARTITION BY x ORDER BY y;
INSERT INTO test VALUES ('hello', 'test');
ALTER TABLE test MODIFY COLUMN x Enum('hello' = 1, 'world' = 2, 'goodbye' = 3);
INSERT INTO test VALUES ('goodbye', 'test');
OPTIMIZE TABLE test FINAL;
ALTER TABLE test MODIFY COLUMN x Enum('hello' = 1, 'world' = 2, 'test' = 3);
ALTER TABLE test MODIFY COLUMN x Int8;
INSERT INTO test VALUES (111, 'abc');
OPTIMIZE TABLE test FINAL;

DROP TABLE IF EXISTS test;
CREATE TABLE test (x Int8, y Int8, z Int8) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO test VALUES (1, 3, 3), (1, 4, 3), (2, 5, 4), (2, 2, 4);

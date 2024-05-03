DROP TABLE IF EXISTS test;
CREATE TABLE test (num UInt64, str String) ENGINE = MergeTree ORDER BY num;
INSERT INTO test (num) VALUES (1), (2), (10), (15), (23);

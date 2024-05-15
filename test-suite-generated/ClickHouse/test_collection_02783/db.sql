DROP TABLE IF EXISTS test_grace_hash;
CREATE TABLE test_grace_hash (id UInt32, value UInt64) ENGINE = MergeTree ORDER BY id;
INSERT INTO test_grace_hash SELECT number, number % 100 = 0 FROM numbers(100000);

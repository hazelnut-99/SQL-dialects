DROP TABLE IF EXISTS test02416;
CREATE TABLE test02416(a UInt64, b UInt64) ENGINE=MergeTree() ORDER BY (a, b);
INSERT INTO test02416 SELECT number % 2 as a, number as b FROM numbers(10);

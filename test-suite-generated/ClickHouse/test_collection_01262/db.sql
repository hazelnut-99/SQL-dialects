DROP TABLE IF EXISTS test_bloom_filter_index;
DROP TABLE IF EXISTS test_bloom_filter_index;
CREATE TABLE test_bloom_filter_index(`uint8` UInt8, `uint16` UInt16, `index_column` UInt64,  INDEX test1 `index_column` TYPE bloom_filter GRANULARITY 1) ENGINE = MergeTree() PARTITION BY tuple() ORDER BY tuple();
INSERT INTO test_bloom_filter_index SELECT number, number, number FROM numbers(10000);

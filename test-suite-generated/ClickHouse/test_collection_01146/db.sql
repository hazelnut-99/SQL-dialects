DROP TABLE IF EXISTS data_01285;
CREATE TABLE data_01285 (
    key   Int,
    value SimpleAggregateFunction(max, Nullable(Int)),
    INDEX value_idx assumeNotNull(value) TYPE minmax GRANULARITY 1
)
ENGINE=AggregatingMergeTree()
ORDER BY key;
INSERT INTO data_01285 SELECT 1, number FROM numbers(2);

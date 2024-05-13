DROP TABLE IF EXISTS agg_table;
CREATE TABLE IF NOT EXISTS agg_table
(
    time DateTime CODEC(DoubleDelta, LZ4),
    xxx String,
    two_values Tuple(Array(UInt16), UInt32),
    agg_simple SimpleAggregateFunction(sum, UInt64),
    agg SimpleAggregateFunction(sumMap, Tuple(Array(Int16), Array(UInt64)))
)
ENGINE = AggregatingMergeTree()
ORDER BY (xxx, time);
INSERT INTO agg_table SELECT toDateTime('2020-10-01 19:20:30'), 'hello', ([any(number)], sum(number)), sum(number),
    sumMap((arrayMap(i -> toString(i), range(13)), arrayMap(i -> (number + i), range(13)))) FROM numbers(10);

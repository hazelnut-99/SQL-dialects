drop table if exists test;
drop table if exists test1;
CREATE TABLE test
(
    `pt` String,
    `count_distinct_exposure_uv` AggregateFunction(uniqHLL12, Int64)
)
ENGINE = AggregatingMergeTree
ORDER BY pt;
CREATE TABLE test1
(
    `pt` String,
    `exposure_uv` Float64
)
ENGINE = Memory;

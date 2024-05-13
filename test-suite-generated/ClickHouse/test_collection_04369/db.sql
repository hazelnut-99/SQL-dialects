CREATE TABLE test2
(
    time DateTime,
    value String
)
ENGINE = MergeTree
ORDER BY (time) AS SELECT 0, '';

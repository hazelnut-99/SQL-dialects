DROP TABLE IF EXISTS t_01906;
CREATE TABLE t_01906
(
    `id` UInt64,
    `update_ts` DateTime,
    `value` UInt32
)
ENGINE = ReplacingMergeTree(update_ts)
PARTITION BY 0 * id
ORDER BY (update_ts, id);
INSERT INTO t_01906 SELECT
    number,
    toDateTime('2020-01-01 00:00:00'),
    1
FROM numbers(100);

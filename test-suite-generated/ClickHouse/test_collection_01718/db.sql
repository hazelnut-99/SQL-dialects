DROP TABLE IF EXISTS report;
CREATE TABLE report
(
    `product` Enum8('IU' = 1, 'WS' = 2),
    `machine` String,
    `branch` String,
    `generated_time` DateTime
)
ENGINE = MergeTree
PARTITION BY (product, toYYYYMM(generated_time))
ORDER BY (product, machine, branch, generated_time);
INSERT INTO report VALUES ('IU', 'lada', '2101', toDateTime('1970-04-19 15:00:00'));

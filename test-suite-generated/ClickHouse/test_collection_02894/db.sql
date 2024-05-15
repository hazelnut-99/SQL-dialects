DROP TABLE IF EXISTS source;
CREATE TABLE source
(
    `dt` Date,
    `ts` DateTime,
    `dt_32` Date32,
    `ts_64` DateTime64(3),
    `n` Int32
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(ts)
ORDER BY tuple();
INSERT INTO source values ('2022-12-31', '2022-12-31 23:59:59', '2022-12-31', '2022-12-31 23:59:59.123', 0);
INSERT INTO source values ('2023-01-01', '2023-01-01 00:00:00', '2023-01-01', '2023-01-01 00:00:00.000', 1);
INSERT INTO source values ('2023-12-01', '2023-12-01 00:00:00', '2023-12-01', '2023-12-01 00:00:00.000', 2);
INSERT INTO source values ('2023-12-31', '2023-12-31 23:59:59', '2023-12-31', '2023-12-31 23:59:59.123', 3);
INSERT INTO source values ('2024-01-01', '2024-01-01 00:00:00', '2024-01-01', '2024-01-01 00:00:00.000', 4);

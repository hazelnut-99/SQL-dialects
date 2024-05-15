CREATE TABLE dt64test
(
    `dt64_column` DateTime64(3),
    `dt_column` DateTime DEFAULT toDateTime(dt64_column)
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(dt64_column)
ORDER BY dt64_column;
INSERT INTO dt64test (`dt64_column`) VALUES ('2020-01-13 13:37:00');

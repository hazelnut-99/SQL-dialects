DROP TABLE IF EXISTS weird_partitions_02245;
CREATE TABLE weird_partitions_02245(d DateTime, d1 DateTime default d - toIntervalHour(8), id Int64)
Engine=MergeTree
PARTITION BY (toYYYYMM(toDateTime(d)), ignore(d1))
ORDER BY id;
INSERT INTO weird_partitions_02245(d, id)
SELECT
    toDateTime('2021-12-31 22:30:00') AS d,
    number
FROM numbers(1000);
INSERT INTO weird_partitions_02245(d, id)
SELECT
    toDateTime('2022-01-01 00:30:00') AS d,
    number
FROM numbers(1000);
INSERT INTO weird_partitions_02245(d, id)
SELECT
    toDateTime('2022-01-31 22:30:00') AS d,
    number
FROM numbers(1000);
INSERT INTO weird_partitions_02245(d, id)
SELECT
    toDateTime('2023-01-31 22:30:00') AS d,
    number
FROM numbers(1000);
OPTIMIZE TABLE weird_partitions_02245;
OPTIMIZE TABLE weird_partitions_02245;

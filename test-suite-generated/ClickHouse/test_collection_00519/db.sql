DROP TABLE IF EXISTS test_00808;
CREATE TABLE test_00808(date Date, id Int8, name String, value Int64, sign Int8) ENGINE = CollapsingMergeTree(sign) ORDER BY (id, date);
INSERT INTO test_00808 VALUES('2000-01-01', 1, 'test string 1', 1, 1);
INSERT INTO test_00808 VALUES('2000-01-01', 2, 'test string 2', 2, 1);
DROP TABLE IF EXISTS test_00808;
DROP TABLE IF EXISTS test_00808_push_down_with_finalizeAggregation;
CREATE TABLE test_00808_push_down_with_finalizeAggregation ENGINE = AggregatingMergeTree
ORDER BY n AS
SELECT
    intDiv(number, 25) AS n,
    avgState(number) AS s
FROM numbers(2500)
GROUP BY n
ORDER BY n;

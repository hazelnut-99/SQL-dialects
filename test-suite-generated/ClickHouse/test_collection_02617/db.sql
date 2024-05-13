DROP TABLE IF EXISTS test1;
CREATE TABLE test1
(
    `year` String ,
    `uv` AggregateFunction(uniqTheta, Int64)
)
ENGINE = AggregatingMergeTree()
ORDER BY (year);
INSERT INTO TABLE test1(year, uv) select '2021',uniqThetaState(toInt64(1));
INSERT INTO TABLE test1(year, uv) select '2021',uniqThetaState(toInt64(2));
INSERT INTO TABLE test1(year, uv) select '2021',uniqThetaState(toInt64(3));
INSERT INTO TABLE test1(year, uv) select '2021',uniqThetaState(toInt64(4));
INSERT INTO TABLE test1(year, uv) select '2022',uniqThetaState(toInt64(1));
INSERT INTO TABLE test1(year, uv) select '2022',uniqThetaState(toInt64(3));

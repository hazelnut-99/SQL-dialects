drop table if exists largestTriangleThreeBucketsTestFloat64Float64;
CREATE TABLE largestTriangleThreeBucketsTestFloat64Float64
(
    x Float64,
    y Float64
) ENGINE = MergeTree order by (y,x);
INSERT INTO largestTriangleThreeBucketsTestFloat64Float64
VALUES (1.0, 10.0),(2.0, 20.0),(3.0, 15.0),(8.0, 60.0),(9.0, 55.0),(10.0, 70.0),(4.0, 30.0),(5.0, 40.0),(6.0, 35.0),(7.0, 50.0);

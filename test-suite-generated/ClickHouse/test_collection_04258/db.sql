drop table if exists largestTriangleThreeBucketsTestFloat64Float64;
CREATE TABLE largestTriangleThreeBucketsTestFloat64Float64
(
    x Float64,
    y Float64
) ENGINE = MergeTree order by (y,x);
INSERT INTO largestTriangleThreeBucketsTestFloat64Float64
VALUES (1.0, 10.0),(2.0, 20.0),(3.0, 15.0),(8.0, 60.0),(9.0, 55.0),(10.0, 70.0),(4.0, 30.0),(5.0, 40.0),(6.0, 35.0),(7.0, 50.0);
drop table largestTriangleThreeBucketsTestFloat64Float64;
drop table if exists largestTriangleThreeBucketsTestDecimal64Decimal64;
CREATE TABLE largestTriangleThreeBucketsTestDecimal64Decimal64
(
    x Decimal64(2),
    y Decimal64(2)
) ENGINE = MergeTree order by (y,x);
INSERT INTO largestTriangleThreeBucketsTestDecimal64Decimal64(x, y) VALUES (0.63, 0.25), (0.02, 0.16), (0.29, 0.16), (0.2, 0.24), (0.41, 0.63), (0.06, 0.73), (0.36, 0.99), (0.57, 0.18), (0.98, 0.09), (0.73, 0.95), (0.45, 0.86), (0.37, 0.86), (0.6, 0.64), (0.11, 0.31), (0.7, 0.25), (0.85, 0.15), (0.68, 0.39), (0.9, 0.3), (0.25, 0.34), (0.09, 0.0), (0.91, 0.62), (0.47, 0.06), (0.08, 0.88), (0.48, 0.57), (0.55, 0.75), (0.19, 0.27), (0.87, 0.15), (0.15, 0.09), (0.77, 0.28), (0.5, 0.2), (0.39, 0.86), (0.52, 0.11), (0.38, 0.75), (0.71, 0.44), (0.21, 0.46), (0.88, 0.15), (0.83, 0.67), (0.23, 0.23);

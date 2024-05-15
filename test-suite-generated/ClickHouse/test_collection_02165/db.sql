DROP TABLE IF EXISTS t;
CREATE TABLE t(d1 Decimal32(5), d2 Decimal64(10), d3 Decimal128(20), d4 Decimal256(40), f1 Float32, f2 Float64) ENGINE=Memory;
INSERT INTO t values (-4.5, 4.5, -45.5, 45.5, 2.5, -3.5);
INSERT INTO t values (4.5, -4.5, 45.5, -45.5, -3.5, 2.5);
INSERT INTO t values (2.5, -2.5, 25.5, -25.5, -2.5, 3.5);
INSERT INTO t values (-2.5, 2.5, -25.5, 25.5, 3.5, -2.5);

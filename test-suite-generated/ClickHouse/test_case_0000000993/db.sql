DROP TABLE IF EXISTS t;
CREATE TABLE t
(
	d1 Decimal32(5),
	d2 Decimal64(10),
	d3 Decimal128(30),
	d4 Decimal256(50),
	f1 Float32,
	f2 Float32
)ENGINE = Memory;
INSERT INTO t values (-1.5, -1.5, -1.5, -1.5, 1.5, 1.5);
INSERT INTO t values (1.5, 1.5, 1.5, 1.5, -1.5, -1.5);

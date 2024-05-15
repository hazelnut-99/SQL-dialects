DROP TABLE IF EXISTS t;
CREATE TABLE t (x UInt64, i256 Int256, u256 UInt256, d256 Decimal256(2)) ENGINE = Memory;
INSERT INTO t SELECT number * number * number AS x, x AS i256, x AS u256, x AS d256 FROM numbers(10000);

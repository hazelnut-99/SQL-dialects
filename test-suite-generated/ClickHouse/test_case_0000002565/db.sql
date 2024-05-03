DROP TABLE IF EXISTS test;
CREATE TABLE test(a Array(Int64), b Array(Float64), c Array(UInt64)) ENGINE=Memory;
INSERT INTO test VALUES ([1, -3, 0, 1], [1.0, 0.4, -0.1], [1, 3, 1]);

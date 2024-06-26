DROP TABLE IF EXISTS 01504_test;
CREATE TABLE 01504_test (key Tuple(String, UInt32), value UInt64) Engine=EmbeddedRocksDB PRIMARY KEY(key);
DROP TABLE IF EXISTS 01504_test;
CREATE TABLE 01504_test (key String, value UInt32) Engine=EmbeddedRocksDB PRIMARY KEY(key);
INSERT INTO 01504_test SELECT '1_1', number FROM numbers(10000);
INSERT INTO 01504_test SELECT concat(toString(number), '_1'), number FROM numbers(10000);
DROP TABLE IF EXISTS 01504_test;
DROP TABLE IF EXISTS 01504_test_memory;
CREATE TABLE 01504_test (k UInt32, value UInt64, dummy Tuple(UInt32, Float64), bm AggregateFunction(groupBitmap, UInt64)) Engine=EmbeddedRocksDB PRIMARY KEY(k);
CREATE TABLE 01504_test_memory AS 01504_test Engine = Memory;
INSERT INTO 01504_test SELECT number % 77 AS k, SUM(number) AS value, (1, 1.2), bitmapBuild(groupArray(number)) FROM numbers(10000000) group by k;
INSERT INTO 01504_test_memory SELECT number % 77 AS k, SUM(number) AS value, (1, 1.2), bitmapBuild(groupArray(number)) FROM numbers(10000000) group by k;
TRUNCATE TABLE 01504_test;

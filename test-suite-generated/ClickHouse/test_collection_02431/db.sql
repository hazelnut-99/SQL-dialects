DROP TABLE IF EXISTS 01686_test;
CREATE TABLE 01686_test (key UInt64, value String) Engine=EmbeddedRocksDB PRIMARY KEY(key);
INSERT INTO 01686_test SELECT number, format('Hello, world ({})', toString(number)) FROM numbers(10000);

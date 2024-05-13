DROP TABLE IF EXISTS 01504_test;
CREATE TABLE 01504_test (key Tuple(String, UInt32), value UInt64) Engine=EmbeddedRocksDB PRIMARY KEY(key);
DROP TABLE IF EXISTS 01504_test;
CREATE TABLE 01504_test (key String, value UInt32) Engine=EmbeddedRocksDB PRIMARY KEY(key);
INSERT INTO 01504_test SELECT '1_1', number FROM numbers(10000);

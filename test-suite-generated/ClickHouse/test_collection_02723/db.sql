DROP TABLE IF EXISTS tab;
CREATE TABLE tab (key Tuple(UInt64, UInt64), val UInt64) ENGINE=Memory;
INSERT INTO tab VALUES ((2, 2), 4);
DROP TABLE tab;
DROP TABLE IF EXISTS sipHashKeyed_test;
CREATE TABLE sipHashKeyed_test ENGINE = Memory() AS SELECT 1 a, 'test' b;

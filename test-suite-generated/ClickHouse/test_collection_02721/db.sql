DROP TABLE IF EXISTS tab;
CREATE TABLE tab (key Tuple(UInt64, UInt64), val UInt64) ENGINE=Memory;
INSERT INTO tab VALUES ((2, 2), 4);

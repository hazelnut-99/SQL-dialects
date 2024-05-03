DROP TABLE IF EXISTS t_map_02014;
CREATE TABLE t_map_02014(i1 UInt64, i2 Int32, m1 Map(UInt32, String), m2 Map(Int8, String), m3 Map(Int128, String)) ENGINE = Memory;
INSERT INTO t_map_02014 VALUES (1, -1, map(1, 'foo', 2, 'bar'), map(-1, 'foo', 1, 'bar'), map(-1, 'foo', 1, 'bar'));
DROP TABLE IF EXISTS t_map_02014;
CREATE TABLE t_map_02014(s String, fs FixedString(3), m1 Map(String, String), m2 Map(FixedString(3), String)) ENGINE = Memory;
INSERT INTO t_map_02014 VALUES ('aaa', 'bbb', map('aaa', 'foo', 'bbb', 'bar'), map('aaa', 'foo', 'bbb', 'bar'));

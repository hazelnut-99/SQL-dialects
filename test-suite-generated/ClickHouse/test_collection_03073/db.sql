DROP TABLE IF EXISTS t_map_contains;
CREATE TABLE t_map_contains (m Map(String, UInt32)) ENGINE = Memory;
INSERT INTO t_map_contains VALUES (map('a', 1, 'b', 2)), (map('c', 3, 'd', 4));

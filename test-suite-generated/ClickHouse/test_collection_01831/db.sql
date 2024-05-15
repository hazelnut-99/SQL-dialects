DROP TABLE IF EXISTS map_comb;
CREATE TABLE map_comb(a int, statusMap Map(UInt16, UInt32)) ENGINE = Log;
INSERT INTO map_comb VALUES (1, map(1, 10, 2, 10, 3, 10)),(1, map(3, 10, 4, 10, 5, 10)),(2, map(4, 10, 5, 10, 6, 10)),(2, map(6, 10, 7, 10, 8, 10)),(3, map(1, 10, 2, 10, 3, 10)),(4, map(3, 10, 4, 10, 5, 10)),(5, map(4, 10, 5, 10, 6, 10)),(5, map(6, 10, 7, 10, 8, 10));

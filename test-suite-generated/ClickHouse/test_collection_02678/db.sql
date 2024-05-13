DROP TABLE IF EXISTS map_comb;
CREATE TABLE map_comb(a int, statusMap Map(UInt16, UInt32)) ENGINE = Log;
INSERT INTO map_comb VALUES (1, map(1, 10, 2, 10, 3, 10)),(1, map(3, 10, 4, 10, 5, 10)),(2, map(4, 10, 5, 10, 6, 10)),(2, map(6, 10, 7, 10, 8, 10)),(3, map(1, 10, 2, 10, 3, 10)),(4, map(3, 10, 4, 10, 5, 10)),(5, map(4, 10, 5, 10, 6, 10)),(5, map(6, 10, 7, 10, 8, 10));
DROP TABLE map_comb;
DROP TABLE IF EXISTS sum_map_decimal;
CREATE TABLE sum_map_decimal(statusMap Map(UInt16,Decimal32(5))) ENGINE = Log;
INSERT INTO sum_map_decimal VALUES (map(1,'1.0',2,'2.0',3,'3.0')), (map(3,'3.0',4,'4.0',5,'5.0')), (map(4,'4.0',5,'5.0',6,'6.0')), (map(6,'6.0',7,'7.0',8,'8.0'));

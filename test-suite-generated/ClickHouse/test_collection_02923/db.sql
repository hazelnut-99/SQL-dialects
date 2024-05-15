DROP TABLE IF EXISTS tb1;
CREATE TABLE tb1 (n UInt32, a Array(Int32)) engine=Memory;
INSERT INTO tb1 VALUES (1, [10, 20, 30, 10, 20, 30, 10, 20, 30, 10, 20, 30, 10, 20, 30, 10, 20, 30, 10, 20, 30]), (2, [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]), (3, [6, 3, 4]);

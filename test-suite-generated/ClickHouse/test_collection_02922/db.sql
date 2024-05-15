DROP TABLE IF EXISTS tb1;
CREATE TABLE tb1 (n UInt32, a Array(Float64)) engine=Memory;
INSERT INTO tb1 VALUES (1, [-3, 2.40, 15, 3.90, 5, 6, 4.50, 5.20, 3, 4, 5, 16, 7, 5, 5, 4]), (2, [-3, 2.40, 15, 3.90, 5, 6, 4.50, 5.20, 12, 45, 12, 3.40, 3, 4, 5, 6]);
DROP TABLE IF EXISTS tb1;

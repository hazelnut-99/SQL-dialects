DROP TABLE IF EXISTS mult_aggregation;
CREATE TABLE mult_aggregation(a UInt32, b UInt32) ENGINE = Memory;
INSERT INTO mult_aggregation VALUES(1, 1);
INSERT INTO mult_aggregation VALUES(1, 3);

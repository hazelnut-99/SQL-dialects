DROP TABLE IF EXISTS add_aggregate;
CREATE TABLE add_aggregate(a UInt32, b UInt32) ENGINE = Memory;
INSERT INTO add_aggregate VALUES(1, 2);
INSERT INTO add_aggregate VALUES(3, 1);

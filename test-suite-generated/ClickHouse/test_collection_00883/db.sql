DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;
CREATE TABLE table1 (a UInt32, b UInt32) ENGINE = Memory;
CREATE TABLE table2 (a UInt32, b UInt32) ENGINE = Memory;
INSERT INTO table1 SELECT number, number FROM numbers(10);
INSERT INTO table2 SELECT number * 2, number * 20 FROM numbers(6);

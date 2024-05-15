DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;
CREATE TABLE table1 (number UInt64) ENGINE=MergeTree ORDER BY tuple();
CREATE TABLE table2 (number UInt64) ENGINE=MergeTree ORDER BY tuple();
INSERT INTO table1 SELECT number FROM numbers_mt(1, 10);
INSERT INTO table2 SELECT number FROM numbers_mt(11, 10);

DROP TABLE IF EXISTS table1 SYNC;
DROP TABLE IF EXISTS table2 SYNC;
CREATE TABLE table2 (id Int64, v UInt64)
ENGINE = MergeTree()
PARTITION BY (toInt32(id / 2) % 3, id % 200) ORDER BY id;
INSERT INTO table2 SELECT number-205, number FROM numbers(10);
INSERT INTO table2 SELECT number-205, number FROM numbers(400, 10);

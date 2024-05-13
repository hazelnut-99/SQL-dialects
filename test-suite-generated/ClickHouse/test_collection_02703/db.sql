DROP TABLE IF EXISTS table1 SYNC;
DROP TABLE IF EXISTS table2 SYNC;
CREATE TABLE table2 (id Int64, v UInt64)
ENGINE = MergeTree()
PARTITION BY (toInt32(id / 2) % 3, id % 200) ORDER BY id;
INSERT INTO table2 SELECT number-205, number FROM numbers(10);
INSERT INTO table2 SELECT number-205, number FROM numbers(400, 10);
DROP TABLE IF EXISTS table3 SYNC;
CREATE TABLE table3 (id Int64, v UInt64)
ENGINE = MergeTree()
PARTITION BY (id % 200, (id % 200) % 10, toInt32(round((id % 200) / 2, 0))) ORDER BY id;
INSERT INTO table3 SELECT number-205, number FROM numbers(10);
INSERT INTO table3 SELECT number-205, number FROM numbers(400, 10);
DETACH TABLE table3;
ATTACH TABLE table3;
DROP TABLE IF EXISTS table4 SYNC;
CREATE TABLE table4 (id Int64, v UInt64, s String,
INDEX a (id * 2, s) TYPE minmax GRANULARITY 3
) ENGINE = MergeTree() PARTITION BY id % 10 ORDER BY v;
INSERT INTO table4 SELECT number, number, toString(number) FROM numbers(1000);

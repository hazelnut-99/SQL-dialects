DROP TABLE IF EXISTS t;
CREATE TABLE t (x UInt64) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t SELECT number FROM numbers(10);
ALTER TABLE t UPDATE x = x - 1 WHERE x % 2 = 1;

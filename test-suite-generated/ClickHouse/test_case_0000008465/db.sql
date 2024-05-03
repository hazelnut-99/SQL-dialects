DROP TABLE IF EXISTS t;
CREATE TABLE t (a Int, b Int, c Int) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t SELECT number, number * 2, number * 3 FROM numbers(100);

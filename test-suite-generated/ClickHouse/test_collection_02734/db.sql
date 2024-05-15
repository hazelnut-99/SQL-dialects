DROP TABLE IF EXISTS t_02559;
CREATE TABLE t_02559 (a Int64, b Int64, c Int64) ENGINE = MergeTree ORDER BY a;
INSERT INTO t_02559 SELECT number, number, number FROM numbers(3);

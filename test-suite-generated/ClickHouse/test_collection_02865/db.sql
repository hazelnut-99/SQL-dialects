CREATE TABLE t1 (a Int, b Int) ENGINE = Memory;
INSERT INTO t1 VALUES (1, -1), (1, 0), (1, 1), (1, 2), (1, 3), (1, 4);
CREATE TABLE t2 (a Int, b Nullable(Int)) ENGINE = Memory;
INSERT INTO t2 VALUES (1, 1), (1, NULL), (1, 2);

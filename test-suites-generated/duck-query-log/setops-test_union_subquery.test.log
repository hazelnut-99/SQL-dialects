CREATE TABLE t(i INTEGER);
INSERT INTO t VALUES (42);
select i, j from (select i, 1 as j from t group by i union all select i, 2 as j from t group by i) sq1;

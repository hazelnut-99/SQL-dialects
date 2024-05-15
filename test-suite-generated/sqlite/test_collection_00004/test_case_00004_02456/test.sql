SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a
  FROM t1;

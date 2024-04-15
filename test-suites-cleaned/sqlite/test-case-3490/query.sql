SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a)
  FROM t1
 WHERE d>e;

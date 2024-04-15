SELECT a-b,
       abs(b-c),
       abs(a)
  FROM t1
 WHERE a>b
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR d>e;

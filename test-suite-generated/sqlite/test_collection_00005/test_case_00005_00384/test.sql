SELECT c-d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
    OR a IS NULL
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

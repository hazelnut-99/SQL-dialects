SELECT b-c
  FROM t1
 WHERE c>d
    OR d>e
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

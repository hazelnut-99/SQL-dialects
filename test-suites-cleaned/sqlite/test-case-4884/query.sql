SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c,
       b
  FROM t1
 WHERE d>e
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

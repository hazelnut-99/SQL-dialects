SELECT a-b,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e
  FROM t1
 WHERE d>e
    OR (e>a AND e<b)
 ORDER BY 4,1,3,2;

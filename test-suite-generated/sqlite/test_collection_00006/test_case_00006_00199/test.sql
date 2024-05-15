SELECT a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b,
       c,
       abs(a)
  FROM t1
 WHERE d>e
 ORDER BY 1,3,2,4,5;

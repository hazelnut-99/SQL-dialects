SELECT e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e;

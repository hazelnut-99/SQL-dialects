SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c,
       a,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 2,3,1,4;

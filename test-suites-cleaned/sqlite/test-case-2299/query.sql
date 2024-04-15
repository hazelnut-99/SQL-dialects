SELECT a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       d,
       a
  FROM t1
 ORDER BY 5,3,2,4;

SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       b,
       a+b*2+c*3+d*4
  FROM t1
 ORDER BY 1,3,2,4;

SELECT a-b,
       d,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       b,
       d-e
  FROM t1
 ORDER BY 1,5,3,7,4,6,2;

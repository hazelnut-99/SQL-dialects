SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       b-c,
       a+b*2+c*3+d*4,
       c,
       abs(a)
  FROM t1
 WHERE d>e
 ORDER BY 2,1,4,5,6,3,7;

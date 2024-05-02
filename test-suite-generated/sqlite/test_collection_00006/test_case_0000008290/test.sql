SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       a,
       (a+b+c+d+e)/5,
       b
  FROM t1
 WHERE b>c
 ORDER BY 4,2,6,5,3,7,1;

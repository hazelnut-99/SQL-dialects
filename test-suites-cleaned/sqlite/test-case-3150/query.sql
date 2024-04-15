SELECT a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
    OR d>e;

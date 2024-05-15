SELECT e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4+e*5,
       b,
       d-e,
       c
  FROM t1
 WHERE c>d
   AND d>e
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,4,1,5,3,6;

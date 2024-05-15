SELECT a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4,
       b
  FROM t1
 WHERE c>d
    OR d>e
 ORDER BY 2,5,1,3,4;

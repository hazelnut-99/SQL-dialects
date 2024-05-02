SELECT a+b*2+c*3,
       a+b*2,
       a-b,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR d>e
 ORDER BY 2,1,3,4;

SELECT a+b*2+c*3+d*4,
       a+b*2+c*3
  FROM t1
 WHERE a>b
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,1;

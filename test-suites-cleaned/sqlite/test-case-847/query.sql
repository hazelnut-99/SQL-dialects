SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       a+b*2+c*3+d*4
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c>d
 ORDER BY 3,1,2;

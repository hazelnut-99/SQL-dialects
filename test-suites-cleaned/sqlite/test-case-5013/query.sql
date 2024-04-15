SELECT a-b,
       a+b*2+c*3+d*4,
       a+b*2,
       b,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,4,2,3;

SELECT a-b,
       a+b*2+c*3,
       a+b*2+c*3+d*4,
       d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 4,5,3,2,1;

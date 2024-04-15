SELECT a+b*2+c*3,
       c-d
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b>c
 ORDER BY 2,1;

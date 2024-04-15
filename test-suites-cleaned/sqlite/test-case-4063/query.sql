SELECT a+b*2+c*3+d*4,
       abs(b-c),
       (a+b+c+d+e)/5,
       c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b>c
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 3,1,4;

SELECT b,
       c,
       e,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       b-c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a>b
   AND e+d BETWEEN a+b-10 AND c+130
 ORDER BY 5,6,1,2,4,3;

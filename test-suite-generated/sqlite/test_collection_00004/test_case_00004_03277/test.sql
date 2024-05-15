SELECT c-d,
       b-c,
       a,
       a+b*2+c*3
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND e+d BETWEEN a+b-10 AND c+130
   AND c>d
 ORDER BY 4,3,1,2;

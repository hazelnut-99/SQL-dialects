SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (e>a AND e<b)
   AND a>b
 ORDER BY 2,4,6,5,1,3;

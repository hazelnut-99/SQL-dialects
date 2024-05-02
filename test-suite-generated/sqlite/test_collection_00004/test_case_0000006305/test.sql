SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       a-b
  FROM t1
 WHERE d>e
   AND e+d BETWEEN a+b-10 AND c+130;

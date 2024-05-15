SELECT d,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e
 ORDER BY 5,6,3,4,1;

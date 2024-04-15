SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1,3,2;

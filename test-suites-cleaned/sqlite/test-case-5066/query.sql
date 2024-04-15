SELECT a+b*2+c*3+d*4,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d-e,
       d,
       abs(b-c),
       a+b*2+c*3,
       a-b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (a>b-2 AND a<b+2);

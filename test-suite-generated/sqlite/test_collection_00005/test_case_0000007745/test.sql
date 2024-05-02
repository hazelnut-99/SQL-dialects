SELECT d-e
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND e+d BETWEEN a+b-10 AND c+130
   AND a IS NULL;

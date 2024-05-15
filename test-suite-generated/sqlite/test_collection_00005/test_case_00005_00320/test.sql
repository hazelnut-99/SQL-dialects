SELECT d-e,
       b-c,
       c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND a>b
   AND a IS NULL;

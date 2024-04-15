SELECT abs(b-c)
  FROM t1
 WHERE a IS NULL
   AND e+d BETWEEN a+b-10 AND c+130;

SELECT abs(b-c)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND c>d
 ORDER BY 1;

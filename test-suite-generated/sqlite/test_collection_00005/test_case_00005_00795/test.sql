SELECT (a+b+c+d+e)/5
  FROM t1
 WHERE b IS NOT NULL
   AND b>c;

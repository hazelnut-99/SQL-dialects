SELECT (a+b+c+d+e)/5,
       c-d
  FROM t1
 WHERE d>e
   AND c>d
   AND a IS NULL;

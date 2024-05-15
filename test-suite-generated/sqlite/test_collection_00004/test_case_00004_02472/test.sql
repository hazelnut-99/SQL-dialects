SELECT (a+b+c+d+e)/5,
       c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e;

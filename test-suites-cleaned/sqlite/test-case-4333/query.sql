SELECT (a+b+c+d+e)/5,
       d,
       c-d,
       abs(b-c)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR c>d
 ORDER BY 3,2,4,1;

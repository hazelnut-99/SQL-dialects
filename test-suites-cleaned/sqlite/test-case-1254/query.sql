SELECT b,
       d-e,
       (a+b+c+d+e)/5,
       d,
       a
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;

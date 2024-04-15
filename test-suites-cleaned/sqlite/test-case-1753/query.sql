SELECT d-e,
       a,
       b-c,
       e,
       d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;

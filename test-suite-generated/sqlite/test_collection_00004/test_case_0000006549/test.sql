SELECT a,
       abs(b-c),
       c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;

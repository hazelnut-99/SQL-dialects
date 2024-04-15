SELECT e,
       d-e,
       a+b*2+c*3+d*4,
       c,
       d,
       a-b,
       abs(b-c)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;

SELECT b-c,
       abs(b-c),
       d-e,
       d,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR a>b;

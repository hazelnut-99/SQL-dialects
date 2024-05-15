SELECT a+b*2+c*3+d*4+e*5,
       a-b,
       d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,1;

SELECT a+b*2+c*3+d*4+e*5,
       b,
       e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e;

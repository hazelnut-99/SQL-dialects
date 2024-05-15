SELECT a+b*2+c*3+d*4+e*5,
       b,
       e
  FROM t1
 WHERE d>e
    OR e+d BETWEEN a+b-10 AND c+130;

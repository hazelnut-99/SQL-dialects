SELECT a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE c>d
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1;

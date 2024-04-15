SELECT a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,2;

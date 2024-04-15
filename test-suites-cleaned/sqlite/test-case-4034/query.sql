SELECT d,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND e+d BETWEEN a+b-10 AND c+130
   AND d>e;

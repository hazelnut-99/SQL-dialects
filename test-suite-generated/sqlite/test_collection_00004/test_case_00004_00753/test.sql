SELECT b,
       a+b*2
  FROM t1
 WHERE c>d
   AND e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,1;

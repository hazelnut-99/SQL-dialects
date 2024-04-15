SELECT b-c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND e+d BETWEEN a+b-10 AND c+130;

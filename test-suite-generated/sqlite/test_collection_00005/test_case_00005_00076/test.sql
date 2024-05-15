SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       c
  FROM t1
 WHERE b>c
   AND a>b
   AND e+d BETWEEN a+b-10 AND c+130;

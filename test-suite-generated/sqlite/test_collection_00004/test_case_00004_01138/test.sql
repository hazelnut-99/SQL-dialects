SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
   AND e+d BETWEEN a+b-10 AND c+130;

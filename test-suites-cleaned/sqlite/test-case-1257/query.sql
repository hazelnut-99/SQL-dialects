SELECT a+b*2
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND e+d BETWEEN a+b-10 AND c+130;

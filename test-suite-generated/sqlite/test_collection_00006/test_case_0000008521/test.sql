SELECT c,
       a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (e>a AND e<b)
 ORDER BY 1,3,2;

SELECT c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
   AND b IS NOT NULL
   AND (e>a AND e<b);

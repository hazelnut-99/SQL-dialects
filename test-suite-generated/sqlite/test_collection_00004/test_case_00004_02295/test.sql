SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
   AND c>d
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1;

SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
   AND d>e
   AND (c<=d-2 OR c>=d+2);

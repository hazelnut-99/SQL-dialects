SELECT a+b*2+c*3,
       a+b*2+c*3+d*4,
       a-b,
       a+b*2
  FROM t1
 WHERE d>e
   AND c>d
   AND a>b
 ORDER BY 3,1,2,4;

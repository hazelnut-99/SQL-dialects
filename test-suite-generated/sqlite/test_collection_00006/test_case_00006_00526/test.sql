SELECT a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE d>e
   AND b>c
 ORDER BY 2,1;

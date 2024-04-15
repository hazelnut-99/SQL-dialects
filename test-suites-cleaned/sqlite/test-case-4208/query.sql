SELECT d,
       a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d>e
   AND d NOT BETWEEN 110 AND 150;

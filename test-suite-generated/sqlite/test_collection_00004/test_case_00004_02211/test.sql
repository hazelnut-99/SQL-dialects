SELECT d,
       a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 WHERE d>e
   AND (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 2,1;

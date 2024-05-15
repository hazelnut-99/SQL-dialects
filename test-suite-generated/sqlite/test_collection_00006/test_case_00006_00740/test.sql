SELECT d,
       a+b*2+c*3,
       a+b*2,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>a AND e<b)
   AND d>e
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 1,2,3,5,4;

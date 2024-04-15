SELECT (a+b+c+d+e)/5,
       a+b*2,
       a+b*2+c*3+d*4+e*5,
       a,
       d-e
  FROM t1
 WHERE d>e
   AND (e>a AND e<b)
   AND b>c
 ORDER BY 1,5,3,4,2;

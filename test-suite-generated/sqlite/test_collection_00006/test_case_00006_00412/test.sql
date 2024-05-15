SELECT a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       a,
       b,
       a+b*2
  FROM t1
 WHERE b>c
   AND (e>a AND e<b)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 5,1,2,3,4;

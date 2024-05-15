SELECT b-c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE b>c
   AND a>b
   AND (e>a AND e<b)
 ORDER BY 2,1;

SELECT a+b*2+c*3,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b>c
   AND a>b
   AND (e>a AND e<b)
 ORDER BY 1,2;

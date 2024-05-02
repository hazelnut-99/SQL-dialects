SELECT c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
   AND (a>b-2 AND a<b+2)
   AND (e>a AND e<b)
 ORDER BY 2,1;

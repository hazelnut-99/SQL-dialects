SELECT a+b*2+c*3,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
   AND a>b;

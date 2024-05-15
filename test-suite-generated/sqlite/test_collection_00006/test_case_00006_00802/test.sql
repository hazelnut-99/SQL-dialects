SELECT a+b*2+c*3+d*4+e*5,
       a-b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
   AND a>b
 ORDER BY 1,3,2;

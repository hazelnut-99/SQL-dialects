SELECT a+b*2+c*3+d*4,
       a+b*2+c*3
  FROM t1
 WHERE b>c
 ORDER BY 1,2;

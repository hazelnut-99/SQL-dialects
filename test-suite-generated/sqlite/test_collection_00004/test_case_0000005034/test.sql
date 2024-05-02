SELECT c,
       a+b*2+c*3,
       d
  FROM t1
 WHERE b>c
 ORDER BY 1,2;

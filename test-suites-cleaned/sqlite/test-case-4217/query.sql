SELECT a+b*2+c*3,
       a-b,
       e,
       d-e
  FROM t1
 WHERE b>c
 ORDER BY 3,1;

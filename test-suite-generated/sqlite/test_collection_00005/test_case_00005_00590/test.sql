SELECT a,
       a+b*2+c*3+d*4,
       d
  FROM t1
 WHERE b IS NOT NULL;

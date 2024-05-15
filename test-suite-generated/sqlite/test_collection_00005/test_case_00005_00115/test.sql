SELECT a+b*2+c*3+d*4+e*5,
       a+b*2,
       d,
       a+b*2+c*3+d*4,
       a-b,
       b-c,
       a
  FROM t1
 WHERE b>c
    OR a IS NULL;

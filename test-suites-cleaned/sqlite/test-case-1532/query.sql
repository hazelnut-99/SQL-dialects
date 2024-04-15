SELECT a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       b,
       a-b,
       a,
       a+b*2+c*3
  FROM t1
 WHERE a IS NULL
    OR b>c;

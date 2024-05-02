SELECT c,
       a+b*2+c*3+d*4+e*5,
       b-c,
       a
  FROM t1
 WHERE a>b
    OR e+d BETWEEN a+b-10 AND c+130
    OR c>d;

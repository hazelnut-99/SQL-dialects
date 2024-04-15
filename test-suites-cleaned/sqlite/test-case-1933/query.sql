SELECT a+b*2+c*3+d*4+e*5,
       e,
       d-e,
       a-b,
       a+b*2+c*3,
       a
  FROM t1
 WHERE c>d
    OR d>e;

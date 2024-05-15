SELECT b-c,
       abs(b-c),
       a+b*2+c*3+d*4+e*5,
       d
  FROM t1
 WHERE d>e;

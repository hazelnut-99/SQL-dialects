SELECT (a+b+c+d+e)/5,
       abs(b-c),
       a+b*2,
       d-e,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d;

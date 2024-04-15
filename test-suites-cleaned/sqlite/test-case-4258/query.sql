SELECT c,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       abs(b-c),
       b
  FROM t1;

SELECT b,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       abs(a)
  FROM t1;

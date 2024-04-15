SELECT abs(b-c),
       d-e,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       a,
       b,
       abs(a)
  FROM t1
 WHERE c>d;

SELECT a+b*2,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       abs(b-c),
       b-c,
       a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

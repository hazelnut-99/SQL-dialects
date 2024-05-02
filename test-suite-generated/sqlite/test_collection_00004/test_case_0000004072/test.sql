SELECT b,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       abs(b-c)
  FROM t1
 WHERE b>c
 ORDER BY 2,3;

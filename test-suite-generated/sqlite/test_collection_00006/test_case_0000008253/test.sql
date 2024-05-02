SELECT d-e,
       b-c,
       a-b,
       a+b*2+c*3+d*4,
       abs(a)
  FROM t1
 ORDER BY 1,5,3,4,2;

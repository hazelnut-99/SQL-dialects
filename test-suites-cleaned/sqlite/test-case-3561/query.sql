SELECT a-b,
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       b,
       abs(a)
  FROM t1
 ORDER BY 3,2,4,1,5;

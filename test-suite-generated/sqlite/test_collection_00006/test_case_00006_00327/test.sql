SELECT a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       d,
       e,
       a+b*2
  FROM t1
 ORDER BY 2,3,4,1,5;

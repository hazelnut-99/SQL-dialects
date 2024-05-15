SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       c,
       (a+b+c+d+e)/5,
       b
  FROM t1
 ORDER BY 5,4,1,3,2;

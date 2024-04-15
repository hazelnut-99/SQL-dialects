SELECT d,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       c-d,
       (a+b+c+d+e)/5,
       a-b
  FROM t1
 ORDER BY 3,4,2,6,5,1;

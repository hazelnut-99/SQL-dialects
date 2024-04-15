SELECT c-d,
       a-b,
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 3,2,4,5,1;

SELECT c-d,
       e,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 4,1,3,2;

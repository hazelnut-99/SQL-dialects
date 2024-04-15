SELECT a+b*2,
       a,
       d,
       c,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 4,2,3,1,5;

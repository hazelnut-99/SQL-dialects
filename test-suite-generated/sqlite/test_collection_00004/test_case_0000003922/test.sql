SELECT a-b,
       (a+b+c+d+e)/5,
       b,
       e,
       b-c
  FROM t1
 ORDER BY 3,5,4,2,1;

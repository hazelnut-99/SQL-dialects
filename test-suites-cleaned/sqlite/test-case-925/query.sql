SELECT a,
       c-d,
       c,
       (a+b+c+d+e)/5,
       abs(b-c),
       b
  FROM t1
 ORDER BY 1,2,5,4,6,3;

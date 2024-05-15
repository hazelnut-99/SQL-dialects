SELECT b-c,
       c,
       d-e,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 1,2,4;

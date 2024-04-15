SELECT e,
       a+b*2+c*3,
       abs(b-c),
       d-e
  FROM t1
 ORDER BY 1,3,4,2;

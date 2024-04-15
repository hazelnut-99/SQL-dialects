SELECT c,
       a+b*2+c*3,
       c-d,
       abs(b-c),
       d-e
  FROM t1
 ORDER BY 3,4,1,2,5;

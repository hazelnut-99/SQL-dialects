SELECT c-d,
       abs(b-c),
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       d-e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2;

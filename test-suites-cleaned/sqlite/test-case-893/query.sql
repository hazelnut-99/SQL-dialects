SELECT b,
       abs(b-c),
       d,
       a-b,
       d-e,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 2,5,1,4,6,3;

SELECT a+b*2+c*3,
       abs(b-c),
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2;

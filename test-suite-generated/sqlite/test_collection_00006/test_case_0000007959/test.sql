SELECT b,
       c,
       a-b,
       d-e,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2
 ORDER BY 2,1,4,3,5;

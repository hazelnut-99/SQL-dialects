SELECT c-d,
       a-b,
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 3,1,2;

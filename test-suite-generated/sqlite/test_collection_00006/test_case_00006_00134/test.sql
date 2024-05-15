SELECT a-b,
       b-c
  FROM t1
 WHERE b>c
   AND d>e
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,1;

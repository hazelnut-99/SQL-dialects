SELECT a-b,
       a,
       c
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,3,1;

SELECT a-b,
       a,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a>b
 ORDER BY 1,3,2;

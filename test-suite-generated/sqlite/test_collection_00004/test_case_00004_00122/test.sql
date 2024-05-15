SELECT a-b,
       a,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a>b;

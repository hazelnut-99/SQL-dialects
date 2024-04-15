SELECT a,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a IS NULL
   AND (a>b-2 AND a<b+2);

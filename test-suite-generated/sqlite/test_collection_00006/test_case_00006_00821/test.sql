SELECT c
  FROM t1
 WHERE d>e
   AND (a>b-2 AND a<b+2)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 1;

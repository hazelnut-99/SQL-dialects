SELECT c-d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR d>e
    OR a>b
 ORDER BY 1;

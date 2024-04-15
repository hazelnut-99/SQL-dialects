SELECT e,
       d-e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR d>e
    OR (e>a AND e<b)
 ORDER BY 1,2;

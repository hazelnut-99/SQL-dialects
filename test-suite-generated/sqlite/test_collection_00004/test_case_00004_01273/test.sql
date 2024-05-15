SELECT c
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d>e
 ORDER BY 1;

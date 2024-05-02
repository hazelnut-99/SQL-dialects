SELECT b
  FROM t1
 WHERE d>e
    OR (e>a AND e<b)
    OR (a>b-2 AND a<b+2)
 ORDER BY 1;

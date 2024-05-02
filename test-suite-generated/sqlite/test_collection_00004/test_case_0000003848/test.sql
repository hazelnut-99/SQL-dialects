SELECT c-d,
       b-c
  FROM t1
 WHERE d>e
    OR a>b
    OR c>d
 ORDER BY 1,2;

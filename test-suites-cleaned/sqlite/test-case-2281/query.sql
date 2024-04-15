SELECT c-d,
       b-c
  FROM t1
 WHERE d>e
    OR c>d
    OR a>b
 ORDER BY 2,1;

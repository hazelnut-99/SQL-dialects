SELECT c-d,
       b-c
  FROM t1
 WHERE a>b
    OR c>d
    OR d>e
 ORDER BY 1,2;

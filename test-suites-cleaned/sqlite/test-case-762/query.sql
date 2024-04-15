SELECT c-d,
       b-c,
       abs(b-c)
  FROM t1
 WHERE d>e
 ORDER BY 1,2,3;

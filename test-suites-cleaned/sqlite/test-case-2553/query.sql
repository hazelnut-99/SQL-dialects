SELECT a-b
  FROM t1
 WHERE b>c
   AND d>e
   AND (e>a AND e<b)
 ORDER BY 1;

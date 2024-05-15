SELECT abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND d>e
   AND (e>a AND e<b)
 ORDER BY 1;

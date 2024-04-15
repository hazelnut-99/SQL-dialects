SELECT abs(b-c)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1;

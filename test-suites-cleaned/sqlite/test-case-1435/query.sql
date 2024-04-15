SELECT abs(b-c)
  FROM t1
 WHERE b IS NOT NULL
    OR (c<=d-2 OR c>=d+2)
    OR d>e;

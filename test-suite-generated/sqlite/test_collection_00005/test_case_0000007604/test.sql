SELECT e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR b IS NOT NULL;

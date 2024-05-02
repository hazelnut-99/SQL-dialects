SELECT abs(a)
  FROM t1
 WHERE b IS NOT NULL
    OR a>b;

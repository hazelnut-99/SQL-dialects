SELECT abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR a IS NULL;

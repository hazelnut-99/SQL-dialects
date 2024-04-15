SELECT d-e
  FROM t1
 WHERE b>c
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1;

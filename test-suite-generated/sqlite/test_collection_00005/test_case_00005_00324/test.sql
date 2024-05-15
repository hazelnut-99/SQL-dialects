SELECT b-c,
       e,
       c-d,
       a-b
  FROM t1
 WHERE b>c
    OR a IS NULL
    OR b IS NOT NULL;

SELECT d,
       d-e,
       a,
       b-c,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR a IS NULL;

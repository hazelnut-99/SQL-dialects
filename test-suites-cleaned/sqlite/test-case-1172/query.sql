SELECT c
  FROM t1
 WHERE b>c
    OR b IS NOT NULL
    OR (e>c OR e<d);

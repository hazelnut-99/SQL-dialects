SELECT d-e,
       a,
       d
  FROM t1
 WHERE (e>c OR e<d)
   AND a IS NULL;

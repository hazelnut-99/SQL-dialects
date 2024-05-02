SELECT c
  FROM t1
 WHERE a IS NULL
   AND (c<=d-2 OR c>=d+2)
   AND c>d;

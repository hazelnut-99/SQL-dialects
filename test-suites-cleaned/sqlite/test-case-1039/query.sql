SELECT d
  FROM t1
 WHERE c>d
   AND (c<=d-2 OR c>=d+2)
   AND (e>c OR e<d);

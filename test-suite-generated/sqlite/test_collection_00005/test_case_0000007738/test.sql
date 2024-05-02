SELECT a-b
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2
   AND (e>c OR e<d);

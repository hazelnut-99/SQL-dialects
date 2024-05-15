SELECT d-e,
       a
  FROM t1
 WHERE b>c
   AND (e>c OR e<d)
   AND (a>b-2 AND a<b+2);

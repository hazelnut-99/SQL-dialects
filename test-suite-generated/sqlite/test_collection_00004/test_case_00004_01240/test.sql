SELECT d-e,
       a,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
    OR (a>b-2 AND a<b+2);

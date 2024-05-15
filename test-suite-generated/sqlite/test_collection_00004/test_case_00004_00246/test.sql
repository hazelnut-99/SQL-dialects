SELECT d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (e>c OR e<d);

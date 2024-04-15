SELECT a-b,
       c,
       a+b*2
  FROM t1
 WHERE b>c
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (e>c OR e<d)
 ORDER BY 1,3,2;

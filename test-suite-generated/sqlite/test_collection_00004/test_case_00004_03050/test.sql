SELECT a-b,
       c,
       a+b*2
  FROM t1
 WHERE (e>c OR e<d)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b>c;

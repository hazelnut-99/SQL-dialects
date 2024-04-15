SELECT a,
       (a+b+c+d+e)/5,
       b
  FROM t1
 WHERE c>d
   AND (e>c OR e<d)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,3;

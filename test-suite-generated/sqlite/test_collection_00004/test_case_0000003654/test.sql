SELECT a,
       (a+b+c+d+e)/5,
       b
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND c>d
   AND (e>c OR e<d)
 ORDER BY 2,1;

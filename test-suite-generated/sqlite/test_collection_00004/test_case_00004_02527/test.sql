SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (e>c OR e<d)
   AND (e>a AND e<b)
 ORDER BY 1,2;

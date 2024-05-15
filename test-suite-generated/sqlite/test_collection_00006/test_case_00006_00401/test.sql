SELECT a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,1,2;

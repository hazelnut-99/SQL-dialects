SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 1,2;

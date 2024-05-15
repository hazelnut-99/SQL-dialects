SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE d>e
    OR (e>c OR e<d)
    OR coalesce(a,b,c,d,e)<>0;

SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e
  FROM t1
 WHERE (e>c OR e<d)
    OR (e>a AND e<b);

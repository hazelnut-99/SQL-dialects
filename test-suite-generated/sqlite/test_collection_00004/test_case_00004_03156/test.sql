SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130;

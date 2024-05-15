SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e
    OR (e>c OR e<d)
 ORDER BY 1,2;

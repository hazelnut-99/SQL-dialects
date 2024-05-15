SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a)
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR e+d BETWEEN a+b-10 AND c+130;

SELECT a,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c)
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR (e>a AND e<b);

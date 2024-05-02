SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       a,
       abs(a)
  FROM t1
 ORDER BY 3,1,4,2;

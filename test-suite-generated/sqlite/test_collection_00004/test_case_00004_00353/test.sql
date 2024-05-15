SELECT d-e,
       e,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d
  FROM t1
 ORDER BY 2,1,4;

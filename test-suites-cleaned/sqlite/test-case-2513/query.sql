SELECT e,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 1,2;

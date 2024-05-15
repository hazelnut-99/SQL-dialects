SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 1;

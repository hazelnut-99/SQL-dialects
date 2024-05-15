SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       b
  FROM t1
 WHERE (e>a AND e<b)
    OR d>e
    OR a>b
 ORDER BY 2,1,3;

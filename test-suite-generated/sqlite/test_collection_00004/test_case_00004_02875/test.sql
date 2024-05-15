SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d
  FROM t1
 WHERE c>d
    OR d>e
 ORDER BY 2,1;

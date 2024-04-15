SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (e>a AND e<b)
    OR c>d
 ORDER BY 1,2;

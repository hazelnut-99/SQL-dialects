SELECT e,
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 1,2,3;

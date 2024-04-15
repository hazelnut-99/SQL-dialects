SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b
  FROM t1
 ORDER BY 1,2;

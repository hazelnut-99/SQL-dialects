SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       d-e,
       c
  FROM t1
 ORDER BY 3,2,1,4;

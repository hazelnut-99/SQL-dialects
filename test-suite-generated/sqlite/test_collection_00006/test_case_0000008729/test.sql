SELECT a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       b
  FROM t1
 ORDER BY 4,3,2,1;

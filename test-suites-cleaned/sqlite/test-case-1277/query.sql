SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(b-c),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c
  FROM t1;

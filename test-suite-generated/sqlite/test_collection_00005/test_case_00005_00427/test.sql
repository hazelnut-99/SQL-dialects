SELECT b-c,
       c,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       abs(a)
  FROM t1;

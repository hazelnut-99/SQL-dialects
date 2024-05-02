SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       a-b
  FROM t1
 ORDER BY 1,3,4,2;

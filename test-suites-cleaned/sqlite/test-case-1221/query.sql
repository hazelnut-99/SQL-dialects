SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a IS NULL;

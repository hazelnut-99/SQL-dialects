SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c
  FROM t1
 WHERE d>e
    OR a>b
 ORDER BY 4,3,2,1,5;

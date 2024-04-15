SELECT e,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR e+d BETWEEN a+b-10 AND c+130
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,6,3,5,4,1;

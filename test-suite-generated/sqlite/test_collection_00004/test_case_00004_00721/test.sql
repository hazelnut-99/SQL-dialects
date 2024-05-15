SELECT c-d,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE c>d
 ORDER BY 3,1,2;

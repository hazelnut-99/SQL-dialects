SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 4,3,2,1;

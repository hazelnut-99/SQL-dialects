SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       a,
       abs(a)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (c<=d-2 OR c>=d+2)
    OR d>e
 ORDER BY 3,5,6,2,1,7,4;

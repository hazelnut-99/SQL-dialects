SELECT a+b*2+c*3+d*4,
       a+b*2+c*3,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       b-c
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2
    OR (c<=d-2 OR c>=d+2);

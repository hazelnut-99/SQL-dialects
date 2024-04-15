SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR (a>b-2 AND a<b+2)
 ORDER BY 4,3,2,1;

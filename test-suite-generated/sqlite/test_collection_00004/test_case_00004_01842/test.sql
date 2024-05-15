SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR b>c;

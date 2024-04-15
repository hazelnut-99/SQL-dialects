SELECT e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d,
       c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,4,5,6,2,3;

SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a-b,
       a+b*2,
       d-e,
       b
  FROM t1
 WHERE d>e
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

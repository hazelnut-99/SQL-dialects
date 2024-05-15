SELECT c,
       abs(a),
       d,
       b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a
  FROM t1
 ORDER BY 1,4,3,5,6,7,2;

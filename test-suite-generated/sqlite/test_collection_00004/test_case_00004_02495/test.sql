SELECT abs(a),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE (e>c OR e<d)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 4,2,5;

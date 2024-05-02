SELECT abs(a),
       a-b,
       d-e,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE c>d
   AND (e>a AND e<b)
 ORDER BY 2,3,6,1,5,4;

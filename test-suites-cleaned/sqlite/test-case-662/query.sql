SELECT a+b*2+c*3,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a),
       a+b*2,
       a
  FROM t1
 WHERE d>e
    OR c>d
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 6,2,1,7,5,4,3;

SELECT d,
       b-c,
       e,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE d>e
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND c>d;

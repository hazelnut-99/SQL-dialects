SELECT b,
       a+b*2+c*3+d*4,
       a+b*2,
       d-e,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE c>d
    OR (c<=d-2 OR c>=d+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

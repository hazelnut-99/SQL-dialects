SELECT d,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE a IS NULL
   AND a>b;

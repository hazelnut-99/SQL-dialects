SELECT a-b,
       (a+b+c+d+e)/5,
       abs(b-c),
       c,
       abs(a),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR a IS NULL;

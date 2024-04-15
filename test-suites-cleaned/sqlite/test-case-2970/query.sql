SELECT a-b,
       abs(a),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

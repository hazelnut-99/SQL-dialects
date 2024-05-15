SELECT d,
       b-c,
       abs(a),
       c-d,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c
  FROM t1;

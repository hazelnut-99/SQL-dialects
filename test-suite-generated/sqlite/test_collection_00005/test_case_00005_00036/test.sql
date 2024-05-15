SELECT (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       abs(a),
       d-e,
       b-c
  FROM t1;

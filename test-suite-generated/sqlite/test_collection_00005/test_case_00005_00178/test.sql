SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a),
       a+b*2,
       a
  FROM t1;

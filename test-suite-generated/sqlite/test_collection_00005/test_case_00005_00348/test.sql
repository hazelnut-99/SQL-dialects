SELECT e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2,
       d-e,
       abs(a),
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR a>b;

SELECT abs(a),
       a+b*2,
       b,
       d,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR a>b;

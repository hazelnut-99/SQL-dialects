SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a),
       d-e,
       b,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 ORDER BY 6,1,4,2,5,3,7;

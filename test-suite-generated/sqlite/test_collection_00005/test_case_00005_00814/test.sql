SELECT d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a),
       a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 WHERE b>c;

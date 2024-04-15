SELECT abs(a),
       a+b*2+c*3+d*4+e*5,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b
  FROM t1;

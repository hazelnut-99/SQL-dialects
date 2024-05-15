SELECT b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5
  FROM t1;

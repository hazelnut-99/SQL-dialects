SELECT abs(a),
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       a-b
  FROM t1
 WHERE a>b;

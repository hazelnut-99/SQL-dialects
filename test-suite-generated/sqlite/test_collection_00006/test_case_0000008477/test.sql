SELECT abs(b-c),
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       c,
       a+b*2+c*3
  FROM t1
 WHERE a>b
 ORDER BY 3,4,6,1,2,5;

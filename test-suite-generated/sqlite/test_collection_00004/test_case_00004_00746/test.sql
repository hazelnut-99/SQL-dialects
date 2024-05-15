SELECT a,
       d-e,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       b-c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (a>b-2 AND a<b+2);

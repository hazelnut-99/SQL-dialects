SELECT abs(a),
       a,
       c,
       d-e,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 1,6,3,5,4,2;

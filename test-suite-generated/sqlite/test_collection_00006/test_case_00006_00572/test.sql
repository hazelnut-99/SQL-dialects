SELECT a+b*2,
       abs(a),
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c
  FROM t1
 WHERE b>c
 ORDER BY 5,1,3,2,4;

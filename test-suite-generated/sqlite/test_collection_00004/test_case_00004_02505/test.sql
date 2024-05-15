SELECT a+b*2+c*3,
       a,
       a+b*2+c*3+d*4+e*5,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       b
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 7,5,1;

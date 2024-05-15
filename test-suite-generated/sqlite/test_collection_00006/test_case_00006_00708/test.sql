SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 5,3,1,2,4;

SELECT a+b*2+c*3+d*4,
       d-e,
       c-d,
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (c<=d-2 OR c>=d+2);

SELECT c-d,
       abs(a),
       a+b*2,
       a+b*2+c*3+d*4,
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a
  FROM t1
 WHERE (c<=d-2 OR c>=d+2);

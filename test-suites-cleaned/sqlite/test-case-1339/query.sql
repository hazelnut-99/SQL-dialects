SELECT a+b*2+c*3+d*4,
       a+b*2,
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(a),
       a
  FROM t1;

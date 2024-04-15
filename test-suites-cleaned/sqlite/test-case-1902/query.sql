SELECT abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e
  FROM t1
 WHERE b IS NOT NULL;

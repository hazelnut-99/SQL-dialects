SELECT abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

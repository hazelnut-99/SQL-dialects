SELECT abs(a),
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       d-e
  FROM t1
 ORDER BY 3,1,4,5,2;

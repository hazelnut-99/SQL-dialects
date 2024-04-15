SELECT e,
       b-c,
       abs(b-c),
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (e>a AND e<b);

SELECT abs(a),
       abs(b-c),
       a
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;

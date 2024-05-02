SELECT abs(a),
       a-b,
       c,
       abs(b-c)
  FROM t1
 WHERE d>e
 ORDER BY 2,3,4;

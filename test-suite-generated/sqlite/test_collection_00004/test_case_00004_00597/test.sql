SELECT abs(a),
       c,
       c-d,
       a-b,
       abs(b-c)
  FROM t1
 ORDER BY 3,2,4;

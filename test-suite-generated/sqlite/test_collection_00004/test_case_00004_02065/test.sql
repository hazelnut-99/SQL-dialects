SELECT e,
       d-e,
       abs(a),
       b-c,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 5,3,4;

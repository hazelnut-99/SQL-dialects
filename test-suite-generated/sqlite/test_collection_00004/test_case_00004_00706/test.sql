SELECT (a+b+c+d+e)/5,
       d-e,
       a-b,
       abs(a),
       b,
       b-c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2;

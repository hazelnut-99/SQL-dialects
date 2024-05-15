SELECT abs(b-c),
       abs(a),
       d-e,
       (a+b+c+d+e)/5,
       a
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2
   AND c>d;

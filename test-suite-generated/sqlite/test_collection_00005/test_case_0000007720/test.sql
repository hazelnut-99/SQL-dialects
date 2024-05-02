SELECT abs(a),
       (a+b+c+d+e)/5,
       c,
       d-e,
       a+b*2,
       e,
       b
  FROM t1
 WHERE a>b;

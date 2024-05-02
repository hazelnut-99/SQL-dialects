SELECT abs(a),
       b-c,
       a+b*2+c*3,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b);

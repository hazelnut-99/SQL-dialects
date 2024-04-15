SELECT a+b*2+c*3+d*4,
       abs(a),
       d-e
  FROM t1
 WHERE (e>a AND e<b)
   AND (e>c OR e<d);

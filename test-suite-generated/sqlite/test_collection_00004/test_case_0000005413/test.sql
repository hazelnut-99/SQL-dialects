SELECT b-c,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       d,
       a+b*2,
       c-d
  FROM t1
 WHERE (e>c OR e<d);

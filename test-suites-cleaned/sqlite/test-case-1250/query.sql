SELECT abs(a),
       a+b*2+c*3,
       a+b*2,
       c,
       d,
       a-b,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE b IS NOT NULL;

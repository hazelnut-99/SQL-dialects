SELECT a+b*2+c*3+d*4+e*5,
       b,
       abs(b-c),
       abs(a),
       a+b*2+c*3+d*4,
       a+b*2
  FROM t1
 WHERE b>c;

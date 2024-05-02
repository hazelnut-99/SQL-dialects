SELECT a+b*2+c*3+d*4+e*5,
       b-c,
       abs(a),
       d,
       abs(b-c),
       c,
       d-e
  FROM t1
 ORDER BY 4,3,5,2,6,7;

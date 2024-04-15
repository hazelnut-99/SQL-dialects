SELECT a+b*2+c*3+d*4,
       d,
       abs(a),
       c-d,
       a
  FROM t1
 ORDER BY 1,3,4,2,5;

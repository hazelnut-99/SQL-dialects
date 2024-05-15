SELECT a+b*2+c*3+d*4+e*5,
       d-e,
       abs(a),
       c-d
  FROM t1
 ORDER BY 2,3,4,1;

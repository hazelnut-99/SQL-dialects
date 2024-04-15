SELECT abs(a),
       a+b*2+c*3+d*4+e*5,
       c-d
  FROM t1
 ORDER BY 3,2,1;

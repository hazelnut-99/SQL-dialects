SELECT abs(a),
       a+b*2+c*3+d*4+e*5,
       a,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 4,3,2,1;

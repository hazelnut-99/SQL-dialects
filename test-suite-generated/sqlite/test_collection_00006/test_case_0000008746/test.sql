SELECT a+b*2+c*3+d*4,
       a,
       a+b*2,
       a-b,
       abs(a),
       a+b*2+c*3
  FROM t1
 ORDER BY 2,3,1,6,4,5;

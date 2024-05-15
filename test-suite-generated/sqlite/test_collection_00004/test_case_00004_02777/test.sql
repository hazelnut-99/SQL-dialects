SELECT a,
       a+b*2+c*3+d*4+e*5,
       d-e,
       b-c,
       abs(a),
       a+b*2,
       b
  FROM t1
 ORDER BY 4,2,3,6,1,5,7;

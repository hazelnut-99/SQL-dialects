SELECT a+b*2+c*3+d*4+e*5,
       abs(a),
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 1,3,2;

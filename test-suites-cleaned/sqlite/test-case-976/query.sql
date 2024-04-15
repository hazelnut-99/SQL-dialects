SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       b,
       abs(a),
       (a+b+c+d+e)/5,
       abs(b-c)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 6,5,4,1,3,2;

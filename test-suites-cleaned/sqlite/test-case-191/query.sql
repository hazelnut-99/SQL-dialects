SELECT abs(a),
       abs(b-c),
       c,
       a-b,
       c-d,
       a+b*2+c*3+d*4,
       b
  FROM t1
 ORDER BY 2,6,7,4,1,5,3;

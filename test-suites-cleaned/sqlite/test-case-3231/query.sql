SELECT abs(b-c),
       abs(a),
       a+b*2+c*3+d*4
  FROM t1
 WHERE a>b
    OR c>d
 ORDER BY 2,3,1;

SELECT abs(a),
       a+b*2,
       c-d,
       abs(b-c),
       a+b*2+c*3,
       a-b
  FROM t1
 WHERE b>c
 ORDER BY 3,2;

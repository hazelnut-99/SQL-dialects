SELECT abs(a),
       c-d,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 3,2,4,1;

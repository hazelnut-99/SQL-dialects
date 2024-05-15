SELECT abs(a),
       a-b,
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 3,1,2;

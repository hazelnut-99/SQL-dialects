SELECT abs(a),
       a+b*2+c*3,
       d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND (a>b-2 AND a<b+2);

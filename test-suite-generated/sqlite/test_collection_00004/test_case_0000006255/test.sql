SELECT abs(a),
       a+b*2
  FROM t1
 WHERE a>b
   AND b>c
   AND (a>b-2 AND a<b+2);

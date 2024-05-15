SELECT abs(a),
       a+b*2+c*3,
       a+b*2,
       e,
       b
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150;

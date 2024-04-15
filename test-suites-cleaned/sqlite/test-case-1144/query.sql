SELECT abs(a),
       a+b*2+c*3,
       c-d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND b IS NOT NULL
   AND c>d;

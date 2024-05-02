SELECT abs(a),
       d
  FROM t1
 WHERE (e>a AND e<b)
   AND a>b
   AND c>d
 ORDER BY 2,1;

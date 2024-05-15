SELECT abs(a),
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b>c
 ORDER BY 1,2;

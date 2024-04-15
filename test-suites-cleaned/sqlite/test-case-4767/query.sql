SELECT abs(a),
       d-e
  FROM t1
 WHERE b>c
   AND (a>b-2 AND a<b+2)
 ORDER BY 1,2;

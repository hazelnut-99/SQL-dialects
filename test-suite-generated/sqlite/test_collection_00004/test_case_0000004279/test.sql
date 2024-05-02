SELECT abs(a),
       abs(b-c)
  FROM t1
 WHERE b>c
    OR (a>b-2 AND a<b+2);

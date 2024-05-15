SELECT abs(a),
       abs(b-c),
       d-e,
       e
  FROM t1
 WHERE b>c
    OR (e>c OR e<d)
    OR a>b
 ORDER BY 2,4;

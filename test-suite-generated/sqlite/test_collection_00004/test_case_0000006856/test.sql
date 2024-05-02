SELECT abs(a),
       abs(b-c),
       d-e,
       e
  FROM t1
 WHERE a>b
    OR b>c
    OR (e>c OR e<d)
 ORDER BY 2,1,4,3;

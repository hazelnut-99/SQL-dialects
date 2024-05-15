SELECT abs(a),
       abs(b-c),
       d-e,
       e
  FROM t1
 WHERE a>b
    OR (e>c OR e<d)
    OR b>c;

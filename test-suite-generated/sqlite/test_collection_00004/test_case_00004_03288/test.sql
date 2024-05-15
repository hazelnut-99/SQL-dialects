SELECT abs(a),
       abs(b-c),
       d-e,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR b>c
    OR a>b;

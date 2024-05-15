SELECT abs(b-c),
       c-d,
       c,
       d-e,
       abs(a),
       b-c
  FROM t1
 WHERE b IS NOT NULL
    OR (e>c OR e<d)
    OR d NOT BETWEEN 110 AND 150;

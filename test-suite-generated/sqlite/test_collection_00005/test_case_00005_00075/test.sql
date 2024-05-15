SELECT b,
       d,
       abs(a),
       abs(b-c),
       d-e
  FROM t1
 WHERE (e>a AND e<b)
    OR e+d BETWEEN a+b-10 AND c+130
    OR b IS NOT NULL;

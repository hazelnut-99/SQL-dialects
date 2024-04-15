SELECT abs(a),
       a-b,
       d,
       a+b*2,
       c-d
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 1,3,2,4;

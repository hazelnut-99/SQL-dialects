SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(a),
       a+b*2,
       a,
       d-e
  FROM t1
 WHERE (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 4,2,3,5,1;

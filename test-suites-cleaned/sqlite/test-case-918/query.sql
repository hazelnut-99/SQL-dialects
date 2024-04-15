SELECT a+b*2,
       d,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE b>c
    OR (c<=d-2 OR c>=d+2)
    OR (e>c OR e<d)
 ORDER BY 2,3,1,4;

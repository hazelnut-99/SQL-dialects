SELECT abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE a>b
    OR b>c
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 2,1;

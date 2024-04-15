SELECT a+b*2+c*3+d*4+e*5,
       b-c,
       abs(a),
       abs(b-c),
       (a+b+c+d+e)/5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR b>c
    OR (e>a AND e<b);

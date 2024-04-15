SELECT a-b,
       e,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d,
       abs(a),
       a+b*2+c*3
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 1,5,7,2,6,4,3;

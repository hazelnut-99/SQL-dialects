SELECT c-d,
       a+b*2+c*3+d*4,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a)
  FROM t1
 WHERE b>c
    OR a>b
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 2,4,5;

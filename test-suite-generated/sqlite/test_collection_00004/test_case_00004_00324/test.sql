SELECT d-e,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE c>d
   AND (c<=d-2 OR c>=d+2);

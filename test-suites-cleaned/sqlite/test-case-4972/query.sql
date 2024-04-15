SELECT abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3,
       a-b
  FROM t1
 WHERE b>c
   AND c BETWEEN b-2 AND d+2
   AND (a>b-2 AND a<b+2);

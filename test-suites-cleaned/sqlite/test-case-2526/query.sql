SELECT c,
       abs(b-c),
       a+b*2+c*3+d*4,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       d-e,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>c OR e<d);

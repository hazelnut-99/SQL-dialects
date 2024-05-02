SELECT d-e,
       a-b,
       b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2,
       b-c,
       d
  FROM t1
 WHERE a>b
    OR (a>b-2 AND a<b+2);

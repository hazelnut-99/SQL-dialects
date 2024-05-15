SELECT b,
       a-b,
       d,
       a+b*2,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       a+b*2+c*3
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

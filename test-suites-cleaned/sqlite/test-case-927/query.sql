SELECT c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       e,
       a,
       d-e,
       b-c,
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,7,6,2,3,4,5;

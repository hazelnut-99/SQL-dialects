SELECT c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c,
       a+b*2+c*3,
       d-e,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 3,4,6,5,1,2;

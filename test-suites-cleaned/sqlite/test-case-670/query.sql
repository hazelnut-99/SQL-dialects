SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       d-e,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR a>b
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,4,2,3;

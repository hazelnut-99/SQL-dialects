SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d,
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 1,2,3;

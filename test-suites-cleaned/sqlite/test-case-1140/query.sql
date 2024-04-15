SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       d-e,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a-b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND d>e
   AND d NOT BETWEEN 110 AND 150;

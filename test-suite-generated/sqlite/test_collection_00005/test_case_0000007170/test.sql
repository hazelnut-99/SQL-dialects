SELECT a+b*2+c*3+d*4+e*5,
       c,
       c-d,
       a-b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       a+b*2+c*3
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND d>e
   AND coalesce(a,b,c,d,e)<>0;

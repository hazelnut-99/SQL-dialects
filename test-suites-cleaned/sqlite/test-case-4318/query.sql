SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND (e>a AND e<b)
   AND e+d BETWEEN a+b-10 AND c+130;

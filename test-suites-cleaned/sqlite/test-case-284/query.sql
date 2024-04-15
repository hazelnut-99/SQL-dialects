SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       b-c,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4,
       a-b
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c>d
   AND b>c
 ORDER BY 6,5,7,4,3,1,2;

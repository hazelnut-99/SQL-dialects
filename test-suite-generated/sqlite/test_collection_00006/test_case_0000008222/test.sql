SELECT a-b,
       a,
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(b-c),
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 4,5,1,6,3,2;

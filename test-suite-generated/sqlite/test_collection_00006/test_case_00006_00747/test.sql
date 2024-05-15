SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       c-d
  FROM t1
 WHERE (e>a AND e<b)
    OR (e>c OR e<d)
    OR c>d
 ORDER BY 3,2,6,5,4,1;

SELECT a+b*2+c*3+d*4+e*5,
       a+b*2,
       a+b*2+c*3+d*4,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR b>c
    OR (e>a AND e<b)
 ORDER BY 6,5,4,2,1,3;

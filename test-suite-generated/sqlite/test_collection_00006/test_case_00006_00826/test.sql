SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND a>b
   AND (e>c OR e<d)
 ORDER BY 2,5,3,4,1;

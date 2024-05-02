SELECT c,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c)
  FROM t1
 WHERE (e>c OR e<d)
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,1,5,2,4;

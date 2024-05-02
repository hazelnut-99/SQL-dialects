SELECT c,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
 ORDER BY 3,4,5,1;

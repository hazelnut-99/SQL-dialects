SELECT c-d,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b,
       a+b*2+c*3,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE b>c
    OR (e>a AND e<b)
    OR (a>b-2 AND a<b+2)
 ORDER BY 6,5;

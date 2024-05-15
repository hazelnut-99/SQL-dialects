SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>a AND e<b)
 ORDER BY 6,3,1,5,4,2;

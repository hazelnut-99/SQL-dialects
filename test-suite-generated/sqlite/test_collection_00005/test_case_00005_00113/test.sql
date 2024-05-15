SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR a>b
    OR b IS NOT NULL;

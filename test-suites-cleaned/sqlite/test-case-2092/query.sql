SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4,
       d-e,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

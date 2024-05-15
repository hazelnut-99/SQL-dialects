SELECT b,
       a-b,
       c,
       abs(b-c),
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,6,4,5,2,7,3;

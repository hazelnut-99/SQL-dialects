SELECT abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       a-b,
       c-d
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

SELECT d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       a,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a)
  FROM t1;

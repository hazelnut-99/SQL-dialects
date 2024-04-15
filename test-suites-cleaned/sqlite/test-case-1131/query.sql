SELECT c,
       b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1;

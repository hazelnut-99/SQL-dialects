SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       e,
       a+b*2,
       c-d,
       a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1;

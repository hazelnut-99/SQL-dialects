SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       a,
       d-e
  FROM t1
 ORDER BY 1,2,3,4,5;

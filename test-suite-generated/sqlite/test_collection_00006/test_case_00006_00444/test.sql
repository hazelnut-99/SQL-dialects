SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,4,3,5,2;

SELECT a+b*2+c*3+d*4,
       d-e,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

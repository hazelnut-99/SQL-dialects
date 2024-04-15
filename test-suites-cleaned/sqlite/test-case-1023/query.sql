SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a IS NULL
    OR d NOT BETWEEN 110 AND 150;

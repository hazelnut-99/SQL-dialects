SELECT a-b,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

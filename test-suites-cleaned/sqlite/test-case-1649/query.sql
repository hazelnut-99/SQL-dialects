SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       a-b,
       a
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150;

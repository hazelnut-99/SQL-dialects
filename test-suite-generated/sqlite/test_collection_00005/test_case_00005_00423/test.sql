SELECT c-d,
       abs(b-c),
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d
  FROM t1
 WHERE b>c
    OR c>d
    OR d NOT BETWEEN 110 AND 150;

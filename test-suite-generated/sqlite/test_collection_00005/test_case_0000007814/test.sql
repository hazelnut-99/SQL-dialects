SELECT e,
       a-b,
       b-c,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE a IS NULL
    OR (e>a AND e<b);

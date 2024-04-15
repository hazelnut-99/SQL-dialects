SELECT c,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d
  FROM t1
 WHERE b>c
    OR c>d
    OR a>b;

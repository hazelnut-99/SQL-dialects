SELECT a+b*2,
       a-b,
       b,
       c-d,
       e,
       b-c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR (e>a AND e<b);

SELECT b-c,
       b,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       d-e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2);

SELECT d,
       b-c,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2;

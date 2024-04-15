SELECT a,
       d-e,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       c,
       abs(b-c)
  FROM t1
 WHERE a>b
   AND d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b);

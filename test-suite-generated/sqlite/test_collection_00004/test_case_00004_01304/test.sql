SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       c,
       b-c,
       d-e,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a>b
    OR (a>b-2 AND a<b+2)
    OR (c<=d-2 OR c>=d+2);

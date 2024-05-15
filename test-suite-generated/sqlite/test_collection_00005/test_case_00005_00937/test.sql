SELECT (a+b+c+d+e)/5,
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR c BETWEEN b-2 AND d+2
    OR a>b;

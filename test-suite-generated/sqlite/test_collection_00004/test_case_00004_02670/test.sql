SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       c-d,
       a-b
  FROM t1
 WHERE (a>b-2 AND a<b+2);

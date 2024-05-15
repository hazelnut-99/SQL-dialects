SELECT d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a,
       c-d,
       a-b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR a>b
    OR c BETWEEN b-2 AND d+2;

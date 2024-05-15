SELECT e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       (a+b+c+d+e)/5,
       a+b*2
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR b>c
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

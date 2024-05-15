SELECT c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       b,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e
  FROM t1;

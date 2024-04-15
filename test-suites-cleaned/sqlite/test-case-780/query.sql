SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3,
       (a+b+c+d+e)/5,
       b,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,5,7,2,4,6,1;

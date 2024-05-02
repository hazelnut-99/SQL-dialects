SELECT abs(b-c),
       e,
       a-b,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       b
  FROM t1
 WHERE b>c
    OR c>d
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 6,5,7,2,3,1,4;

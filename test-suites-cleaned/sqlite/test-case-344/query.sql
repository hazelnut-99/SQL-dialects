SELECT e,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       b,
       a+b*2+c*3
  FROM t1
 WHERE a>b
    OR (e>c OR e<d)
 ORDER BY 4,3,6,5,2,1;

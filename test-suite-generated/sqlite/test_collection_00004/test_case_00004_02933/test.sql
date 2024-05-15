SELECT d,
       a+b*2+c*3+d*4,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (e>a AND e<b)
    OR e+d BETWEEN a+b-10 AND c+130
    OR (a>b-2 AND a<b+2)
 ORDER BY 1,4,2,3;

SELECT a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
    OR a>b;

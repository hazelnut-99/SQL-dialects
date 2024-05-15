SELECT (a+b+c+d+e)/5,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (e>a AND e<b)
    OR c>d
 ORDER BY 2,1,3;

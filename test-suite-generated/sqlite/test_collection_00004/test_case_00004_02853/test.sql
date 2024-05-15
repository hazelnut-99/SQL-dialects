SELECT (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
    OR (e>a AND e<b)
 ORDER BY 1,2;

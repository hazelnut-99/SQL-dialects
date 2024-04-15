SELECT b-c,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR (a>b-2 AND a<b+2)
    OR d>e
 ORDER BY 1,3,2,4;

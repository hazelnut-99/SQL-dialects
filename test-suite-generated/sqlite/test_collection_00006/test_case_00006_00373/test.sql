SELECT (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR c BETWEEN b-2 AND d+2
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,1;

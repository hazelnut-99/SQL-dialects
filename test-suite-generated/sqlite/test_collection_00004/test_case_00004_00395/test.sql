SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1;

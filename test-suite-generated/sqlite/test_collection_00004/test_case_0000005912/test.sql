SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       a+b*2,
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 4,1,3,2;

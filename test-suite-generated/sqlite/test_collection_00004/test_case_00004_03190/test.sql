SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e,
       a+b*2+c*3,
       abs(b-c)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND a>b
   AND c>d;

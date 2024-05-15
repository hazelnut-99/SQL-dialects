SELECT (a+b+c+d+e)/5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       d
  FROM t1
 WHERE (e>a AND e<b)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR a>b;

SELECT (a+b+c+d+e)/5,
       c,
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b-c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR d NOT BETWEEN 110 AND 150
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,5;

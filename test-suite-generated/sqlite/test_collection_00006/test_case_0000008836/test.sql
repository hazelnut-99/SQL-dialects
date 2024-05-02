SELECT (a+b+c+d+e)/5,
       d,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 ORDER BY 6,7,2,4,1,5,3;

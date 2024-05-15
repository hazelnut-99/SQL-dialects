SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a>b
 ORDER BY 7,6,5,2,1,3,4;

SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND d NOT BETWEEN 110 AND 150;

SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       (a+b+c+d+e)/5,
       c-d,
       a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 4,5,6;

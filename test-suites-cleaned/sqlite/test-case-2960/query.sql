SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
    OR b>c
    OR d NOT BETWEEN 110 AND 150;

SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       a,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>c OR e<d)
   AND a IS NULL;

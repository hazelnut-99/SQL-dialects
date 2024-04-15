SELECT b,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE c>d
   AND a>b
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1,4,3,2;

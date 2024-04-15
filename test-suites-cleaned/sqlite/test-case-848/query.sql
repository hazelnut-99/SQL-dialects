SELECT a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR b>c
 ORDER BY 3,1,2,4;

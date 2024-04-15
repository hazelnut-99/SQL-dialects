SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c,
       a,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>a AND e<b)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);

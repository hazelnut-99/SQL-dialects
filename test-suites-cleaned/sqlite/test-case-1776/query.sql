SELECT a+b*2+c*3,
       a+b*2+c*3+d*4,
       a+b*2,
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b IS NOT NULL;

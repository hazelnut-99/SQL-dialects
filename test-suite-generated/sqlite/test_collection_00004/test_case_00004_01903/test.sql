SELECT a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 4,2,1;

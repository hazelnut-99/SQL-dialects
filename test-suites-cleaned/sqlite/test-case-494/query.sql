SELECT a+b*2,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150
   AND c>d
 ORDER BY 3,4,6,5,1,2;

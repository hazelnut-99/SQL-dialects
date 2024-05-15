SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE a>b
    OR c BETWEEN b-2 AND d+2
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,1;

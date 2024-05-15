SELECT a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE b>c
    OR a>b
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,2,4,1,5;

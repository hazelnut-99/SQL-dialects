SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       a+b*2
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 2,5;

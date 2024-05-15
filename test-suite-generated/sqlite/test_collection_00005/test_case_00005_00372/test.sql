SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       a
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR d>e
    OR (a>b-2 AND a<b+2);

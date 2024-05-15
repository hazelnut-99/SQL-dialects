SELECT c,
       a+b*2+c*3,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b,
       d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR d NOT BETWEEN 110 AND 150;

SELECT b,
       a+b*2,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a)
  FROM t1
 WHERE b>c
    OR (c<=d-2 OR c>=d+2)
    OR d NOT BETWEEN 110 AND 150;

SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR b>c
    OR d>e
 ORDER BY 3,2,1;

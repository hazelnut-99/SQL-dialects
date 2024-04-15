SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a),
       abs(b-c),
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR d>e
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,4,2,1,5;

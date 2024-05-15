SELECT abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,1,2;

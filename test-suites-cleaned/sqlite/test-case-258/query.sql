SELECT abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e,
       a+b*2,
       a,
       a-b
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,2,5,3,6,4;

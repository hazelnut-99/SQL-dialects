SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4+e*5,
       a-b,
       abs(a),
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 3,2,1,6;

SELECT b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       d-e,
       abs(a),
       (a+b+c+d+e)/5
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR e+d BETWEEN a+b-10 AND c+130
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,2,1,5,4;

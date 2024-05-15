SELECT d-e,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4
  FROM t1
 ORDER BY 3,4,1,6;

SELECT b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       abs(a),
       a-b,
       e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR b>c
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 5,6,1;

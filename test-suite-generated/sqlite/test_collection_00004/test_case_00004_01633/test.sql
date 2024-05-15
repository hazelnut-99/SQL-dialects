SELECT d-e,
       abs(a),
       a,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c>d
 ORDER BY 5,2;

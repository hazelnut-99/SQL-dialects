SELECT abs(a),
       abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;

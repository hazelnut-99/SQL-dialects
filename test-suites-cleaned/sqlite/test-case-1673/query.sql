SELECT abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND c BETWEEN b-2 AND d+2;

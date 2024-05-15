SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       abs(a),
       e,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 3,4,2,1,5;

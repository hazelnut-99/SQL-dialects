SELECT a,
       b,
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR a>b
 ORDER BY 2,3,4,1;

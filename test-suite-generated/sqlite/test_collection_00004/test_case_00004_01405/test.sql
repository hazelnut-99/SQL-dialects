SELECT abs(a),
       b-c,
       a,
       d-e,
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 5,4,3,6,2,1;

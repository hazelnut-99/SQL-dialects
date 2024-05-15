SELECT a+b*2,
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       c-d
  FROM t1
 ORDER BY 4,1,5,3,2;

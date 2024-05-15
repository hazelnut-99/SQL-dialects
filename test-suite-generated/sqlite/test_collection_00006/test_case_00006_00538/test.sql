SELECT a+b*2+c*3,
       c,
       abs(a),
       a+b*2+c*3+d*4+e*5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>a AND e<b)
    OR d>e
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,4,2,5,1;

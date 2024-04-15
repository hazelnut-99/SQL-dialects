SELECT abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       e,
       d,
       a,
       b-c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (e>c OR e<d)
 ORDER BY 5,1,7,2,3,6,4;

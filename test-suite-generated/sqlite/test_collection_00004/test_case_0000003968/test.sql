SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       b,
       a+b*2,
       abs(a),
       a,
       a+b*2+c*3
  FROM t1
 WHERE (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,7,5,6,3,4,2;

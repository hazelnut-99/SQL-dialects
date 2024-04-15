SELECT a+b*2+c*3,
       abs(a),
       e,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d
  FROM t1
 WHERE (e>c OR e<d)
    OR c BETWEEN b-2 AND d+2
    OR a>b
 ORDER BY 5,2,4,1,3,6;

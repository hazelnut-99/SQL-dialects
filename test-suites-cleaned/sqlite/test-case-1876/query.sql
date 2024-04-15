SELECT a-b,
       a,
       a+b*2+c*3,
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c
  FROM t1
 WHERE b IS NOT NULL
   AND (e>c OR e<d)
   AND c>d;

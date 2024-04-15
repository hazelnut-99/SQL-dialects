SELECT b,
       b-c,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE b IS NOT NULL
   AND coalesce(a,b,c,d,e)<>0;

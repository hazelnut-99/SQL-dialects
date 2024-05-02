SELECT a+b*2,
       abs(a),
       b,
       c,
       d,
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c BETWEEN b-2 AND d+2
   AND b IS NOT NULL;

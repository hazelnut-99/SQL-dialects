SELECT c,
       d-e,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       a,
       a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (e>a AND e<b)
   AND e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,6,7,3;

SELECT abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       b,
       a,
       b-c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,2,4,6,1,5;

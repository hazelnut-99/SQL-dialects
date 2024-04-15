SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       e,
       abs(a),
       a+b*2+c*3,
       abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b);
